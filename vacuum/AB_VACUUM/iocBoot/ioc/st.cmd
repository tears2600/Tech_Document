#!../../bin/linux-x86_64/ABPLC

## You may have to change ioc to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/ABPLC.dbd"
ABPLC_registerRecordDeviceDriver pdbbase

## Load record instances
## dbLoadTemplate "db/userHost.substitutions"
## dbLoadRecords "db/dbSubExample.db", "user=hjsonHost"

dbLoadRecords("db/abplcDIDO.db","PLC=AB, IOC=ABPLC")
dbLoadRecords("db/abplcAIAO.db","PLC=AB, IOC=ABPLC")
dbLoadRecords("db/abplcSTRINGIN.db","PLC=AB, IOC=ABPLC")



## Set this to see messages from mySub
#var mySubDebug 1

## Run this to trace the stages of iocInit
#traceIocInit

EIP_buffer_limit(500)

drvEtherIP_init()

drvEtherIP_define_PLC("AB","10.1.5.204",0)

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=hjsonHost"
