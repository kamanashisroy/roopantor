ROOPANTOR_VALA_LANG_DEFINITION_CSOURCES=$(wildcard $(ROOPANTOR_HOME)/libs/valalang/vsrc/*.c)
ROOPANTOR_VALA_LANG_DEFINITION_VSOURCE_BASE=$(basename $(notdir $(ROOPANTOR_VALA_LANG_DEFINITION_CSOURCES)))
OBJECTS+=$(addprefix $(ROOPANTOR_HOME)/build/.objects/, $(addsuffix .o,$(ROOPANTOR_VALA_LANG_DEFINITION_VSOURCE_BASE)))
