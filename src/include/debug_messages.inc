; Use DBG_STR to define the message. Refer to debug.inc for further instructions.
IF DEF(DEBUG)

introDebugMsg:
    DBG_STR STRCAT("LotMS Build ",__ISO_8601_UTC__)

startSpawnMsg:
    DBG_STR "X %($FF44)%"

midSpawnMsg:
    DBG_STR "Y %($FF44)% %B% %($D97E)% %C%"

endSpawnMsg:
    DBG_STR "Z %($FF44)% %B% %DE%"

endSpawnMsg2:
    DBG_STR "Z %($FF44)% %B% %DE% %($ff9f)%%($ff9e)%"

ENDC
