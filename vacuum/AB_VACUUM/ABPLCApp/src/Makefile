TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ABPLC
# ABPLC.dbd will be created and installed
DBD += ABPLC.dbd

# ABPLC.dbd will be made up from these files:
ABPLC_DBD += base.dbd

# Include dbd files from all support applications:
#ABPLC_DBD += xxx.dbd

ABPLC_DBD += ether_ip.dbd

# Add all the support libraries needed by this IOC
#ABPLC_LIBS += xxx
ABPLC_LIBS += ether_ip

# ABPLC_registerRecordDeviceDriver.cpp derives from ABPLC.dbd
ABPLC_SRCS += ABPLC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ABPLC_SRCS_DEFAULT += ABPLCMain.cpp
ABPLC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ABPLC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ABPLC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

