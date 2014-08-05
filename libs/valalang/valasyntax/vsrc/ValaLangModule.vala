using aroop;
using shotodol;
using valalang.valasyntax;

/**
 * \ingroup vala
 * \defgroup valalang.valasyntax Vala language construct
 */
/** \addtogroup valalang.valasyntax
 *  @{
 */

public class valalang.valasyntax.ValaLangModule : DynamicModule {
	ValaLangModule() {
		extring nm = extring.set_static_string("valalang.valasyntax");
		extring ver = extring.set_static_string("0.0.0");
		base(&nm,&ver);
	}
	public override int init() {
		extring entry = extring.set_static_string("keywords");
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaSelectionKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaIterationKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaJumpingKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaExceptionKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaSynchronizationKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaTypeDeclarationKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaModifierKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaAccessModifierKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaMethodParameterKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaNamespaceKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaOperatorKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaAccessKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaLiteralKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaPropertyKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaConstructionKeyword(), this));
		Plugin.register(&entry, new AnyInterfaceExtension(new ValaOtherKeyword(), this));
		return 0;
	}

	public override int deinit() {
		base.deinit();
		return 0;
	}
	[CCode (cname="get_module_instance")]
	public static Module get_module_instance() {
		return new ValaLangModule();
	}

}

/* @} */
