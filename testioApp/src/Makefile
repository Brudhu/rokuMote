TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = testio
# testio.dbd will be created and installed
DBD += testio.dbd

# testio.dbd will be made up from these files:
testio_DBD += base.dbd

# Include dbd files from all support applications:
testio_DBD += devgpio.dbd
testio_DBD += calcSupport.dbd

# Add all the support libraries needed by this IOC
testio_LIBS += $(EPICS_BASE_IOC_LIBS)
testio_LIBS += devfile
testio_LIBS += calc

# testio_registerRecordDeviceDriver.cpp derives from testio.dbd
testio_SRCS += testio_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
testio_SRCS_DEFAULT += testioMain.cpp
testio_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#testio_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
testio_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

