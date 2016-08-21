#!../../bin/linux-arm/testio

## You may have to change testio to something else
## everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase("../../dbd/testio.dbd",0,0)
testio_registerRecordDeviceDriver(pdbbase) 

FileConstConfigure("BEAGLEBONE BLACK")

## Load record instances
#dbLoadRecords("../../db/output.db","Sys=BBB01,Desc=Displays de 7 Segmentos")
dbLoadTemplate("../../db/output.substitutions")
dbLoadTemplate("../../db/output-curl.substitutions")

iocInit()

## Start any sequence programs
#seq snctestio,"user=root"
