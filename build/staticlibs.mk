
PROJECT_OBJDIR=$(ROOPANTOR_HOME)/build/.objects/
#LIBS+=-lm
include $(ONUBODH_HOME)/transform/strtrans/staticlibs.mk
include $(ONUBODH_HOME)/libs/xmlparser/staticlibs.mk
include $(SHOTODOL_HOME)/libs/iterator/staticlibs.mk
#include $(SHOTODOL_HOME)/libs/db/staticlibs.mk
#include $(SHOTODOL_HOME)/libs/bundle/staticlibs.mk
#include $(SHOTODOL_HOME)/$(PLATFORM)/platform_extra/staticlibs.mk
include $(ROOPANTOR_HOME)/libs/aroopp/staticlibs.mk
