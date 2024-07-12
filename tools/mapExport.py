import PIL.Image, PIL.ImageDraw
import struct
import sys

metatile_bank = 0x10
gfx_bank = 0x1c

show_scripts = False

class ROM:
    def __init__(self, filename):
        self.data = open(filename, "rb").read()

    def getWord(self, bank, addr):
        addr += 0x4000 * bank
        return struct.unpack("<H", self.data[addr:addr+2])[0]

    def getByte(self, bank, addr):
        addr += 0x4000 * bank
        return struct.unpack("<B", self.data[addr:addr+1])[0]

rom = ROM(sys.argv[1])

tile_cache = {}
def drawTile(img, tx, ty, bank, addr):
    global tile_cache
    addr += bank * 0x4000
    if addr not in tile_cache:
        buffer = bytearray(b'\x00' * 8 * 8)
        for y in range(8):
            a = rom.data[addr + y * 2]
            b = rom.data[addr + y * 2 + 1]
            for x in range(8):
                v = 0
                if a & (0x80 >> x):
                    v |= 1
                if b & (0x80 >> x):
                    v |= 2
                buffer[x+y*8] = v
        tile = PIL.Image.frombytes('P', (8, 8), bytes(buffer))
        tile = tile.resize((16, 16))
        tile_cache[addr] = tile
    else:
        tile = tile_cache[addr]
    img.paste(tile, (tx, ty))

def drawText(img, x, y, str):
    img.draw.text((x, y), str, fill=4)

def drawMetaTile(img, x, y, metatile_data_addr, gfx_offset, meta_tile):
    for ty in range(2):
        for tx in range(2):
            tile_nr = rom.getByte(metatile_bank, metatile_data_addr + meta_tile * 6 + tx + ty * 2)
            drawTile(img, x * 32 + tx * 16, y * 32 + ty * 16, gfx_bank, gfx_offset + tile_nr * 16)

    metatile_type_info1 = rom.getByte(metatile_bank, metatile_data_addr + meta_tile * 6 + 4)
    metatile_type_info2 = rom.getByte(metatile_bank, metatile_data_addr + meta_tile * 6 + 5)
    # Draw metatile type info
    #if metatile_type_info2 not in {0x04, 0x05}:
    #    drawText(img, x * 32, y * 32 + 8, "%02x %02x" % (metatile_type_info1, metatile_type_info2))

for map_nr in range(16):
    addr = map_nr * 11
    gfx_offset = rom.getWord(0x08, addr + 0)
    if gfx_offset >= 0x4000:
        gfx_offset -= 0x8000
    metatile_data_addr = rom.getWord(0x08, addr + 3) - 0x4000
    
    print("Map %02x" % (map_nr))
    r = {}
    for n in range(256):
        d = rom.getByte(metatile_bank, metatile_data_addr + n * 6 + 5)
        r[d] = r.get(d, 0) + 1
    # for k, v in sorted(r.items()):
    #     print("%02x: %d" % (k, v))

    map_bank = rom.getByte(0x08, addr + 6)
    map_data_addr = rom.getWord(0x08, addr + 7) - 0x4000
    
    indoor_map = rom.getByte(map_bank, map_data_addr + 0)
    rle = rom.getByte(map_bank, map_data_addr + 1)
    h = rom.getByte(map_bank, map_data_addr + 2)
    w = rom.getByte(map_bank, map_data_addr + 3)
    map_data_addr += 4
    
    if indoor_map:
        template_addr = rom.getWord(map_bank, map_data_addr + 0) - 0x4000
        map_data_addr += 2
        door_data_addr = map_data_addr
        map_data_addr += 3 * 4 * 2

    img = PIL.Image.new("P", (32 * 10 * w, 32 * 8 * h))
    img.draw = PIL.ImageDraw.Draw(img)
    
    for ry in range(h):
        #print(map_nr, ry, h)
        for rx in range(w):
            map_script_addr = rom.getWord(map_bank, map_data_addr + 0) - 0x4000
            map_tiledata_addr = rom.getWord(map_bank, map_data_addr + 2) - 0x4000
            map_data_addr += 4
            
            addr = map_tiledata_addr
            if indoor_map:
                addr = template_addr
            
# The map RLE compression has been changed for LotMS to allow more metatiles.
# One or more bytes of literal metatile ids may be followed by a repeat value.
# Repeat values must either be followed by a literal or end at a ten byte boundary.
# Repeat values are any byte following a literal which is greater than $f7.
# They repeat the previous literal two to nine times (creating a run from three to ten bytes total).
# The value $f8 repeats the previously output literal two times (for a run of three bytes total).
# The value $ff repeats the previously output literal nine times (for a run of ten bytes total).
            tiles = []
            data = rom.getByte(map_bank, addr)
            tiles.append(data)
            while len(tiles) < 10 * 8:
                addr += 1
                last = data
                data = rom.getByte(map_bank, addr)

                if data > 0xf7:
                    tiles += [last] * (data - 0xf6)
                else:
                    tiles.append(data)

            if indoor_map:
                tiles[9 + 3 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 0) & 3) * 8 + 0)
                tiles[9 + 4 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 0) & 3) * 8 + 1)
                tiles[0 + 3 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 1) & 3) * 8 + 2)
                tiles[0 + 4 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 1) & 3) * 8 + 3)
                tiles[4 + 0 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 2) & 3) * 8 + 4)
                tiles[5 + 0 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 2) & 3) * 8 + 5)
                tiles[4 + 7 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 3) & 3) * 8 + 6)
                tiles[5 + 7 * 10] = rom.getByte(map_bank, door_data_addr + (rom.getByte(map_bank, map_tiledata_addr + 3) & 3) * 8 + 7)
                map_tiledata_addr += 4
                while True:
                    tile = rom.getByte(map_bank, map_tiledata_addr)
                    xy = rom.getByte(map_bank, map_tiledata_addr + 1)
                    map_tiledata_addr += 2
                    if tile == 0xFF:
                        break
                    tiles[(xy & 0x0F) + (xy >> 4) * 10] = tile

            for y in range(8):
                for x in range(10):
                    drawMetaTile(img, rx * 10 + x, ry * 8 + y, metatile_data_addr, gfx_offset, tiles[x+y*10])

            enter_map_script_index = rom.getWord(map_bank, map_script_addr)
            map_script_addr += 2
            while show_scripts:
                xy = rom.getByte(map_bank, map_script_addr)
                if xy == 0xff:
                    break
                script_index = rom.getWord(map_bank, map_script_addr + 1)
                map_script_addr += 3
                x = xy & 0x0F
                y = xy >> 4
                drawText(img, (rx * 10 + x) * 32, (ry * 8 + y) * 32, "%04x" % (script_index))

    pal = img.getpalette()
    pal[0:3] = [0xc4,0xf0,0xc2]
    pal[3:6] = [0x5a,0xb9,0xa8]
    pal[6:9] = [0x1e,0x60,0x6e]
    pal[9:12] = [0x2d,0x1b,0x00]
    pal[12:15] = [0xff,0x00,0x00]
    img.putpalette(pal)
    img.save("map%02x.png" % (map_nr))
