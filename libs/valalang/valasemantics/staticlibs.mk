ROOPANTOR_VALA_LANG_DEFINITION_SEMANTICS_CSOURCES=$(wildcard $(ROOPANTOR_HOME)/libs/valalang/valasemantics/vsrc/*.c)
ROOPANTOR_VALA_LANG_DEFINITION_SEMANTICS_VSOURCE_BASE=$(basename $(notdir $(ROOPANTOR_VALA_LANG_DEFINITION_SEMANTICS_CSOURCES)))
OBJECTS+=$(addprefix $(ROOPANTOR_HOME)/build/.objects/, $(addsuffix .o,$(ROOPANTOR_VALA_LANG_DEFINITION_SEMANTICS_VSOURCE_BASE)))
