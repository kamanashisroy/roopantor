using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaConstructionKeyword : ValaKeyword {
	int CONSTRUCT;int STATIC_CONSTRUCT;int CLASS_CONSTRUCT; // construction blocks
	public ValaConstructionKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		extring kw = extring.set_static_string("construct");
		CONSTRUCT = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("static construct");
		STATIC_CONSTRUCT = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("class construct");
		CLASS_CONSTRUCT = parser.addValaKeyword(&kw);
	}
}

/* @} */
