using aroop;
using shotodol;
using valaparse;

/** \addtogroup valaparse
 *  @{
 */

public class valaparse.ValaParserModule : DynamicModule {
	ValaParserModule() {
		var nm = extring.set_static_string("valaparser");
		var ver = extring.set_static_string("0.0.0");
		base(&nm,&ver);
	}

	public override int init() {
		var entry = extring.set_static_string("valatokenizer");
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaTokenizer(), this));
		entry.rebuild_and_set_static_string("unittest");
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaTokenizerTest(), this));
		return 0;
	}

	public override int deinit() {
		base.deinit();
		return 0;
	}
	[CCode (cname="get_module_instance")]
	public static Module get_module_instance() {
		return new ValaParserModule();
	}


}

/* @} */
