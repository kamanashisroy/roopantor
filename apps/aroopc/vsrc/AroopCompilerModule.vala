using aroop;
using shotodol;
using roopantor;

public class roopantor.AroopCompilerModule : DynamicModule {
	AroopCompilerModule() {
		var nm = extring.set_static_string("aroopc");
		var ver = extring.set_static_string("0.0.0");
		base(&nm,&ver);
	}
	public override int init() {
		return 0;
	}

	public override int deinit() {
		return 0;
	}

	[CCode (cname="get_module_instance")]
	public static Module get_module_instance() {
		return new AroopCompilerModule();
	}
}
