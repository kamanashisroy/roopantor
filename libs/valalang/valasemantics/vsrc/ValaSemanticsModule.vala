using aroop;
using shotodol;
using valalang.valasemantics;
using valascan;

/**
 * \ingroup vala
 * \defgroup valalang.valasemantics Vala language semantics
 */
/** \addtogroup valalang.valasemantics
 *  @{
 */

public class valalang.valasemantics.ValaSemanticsModule : DynamicModule {
	ValaSemanticsModule() {
		extring nm = extring.set_string(core.sourceModuleName());
		extring ver = extring.set_static_string("0.0.0");
		base(&nm,&ver);
	}
	public override int init() {
		extring entry = extring.set_static_string("semantics");
		Plugin.register(&entry, new AnyInterfaceExtension(new EnumParser(), this));
		return 0;
	}

	public override int deinit() {
		base.deinit();
		return 0;
	}
	[CCode (cname="get_module_instance")]
	public static Module get_module_instance() {
		return new ValaSemanticsModule();
	}

}

/* @} */
