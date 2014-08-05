using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaAccessModifierKeyword : ValaKeyword {
	int PUBLIC;int PRIVATE;int PROTECTED;int INTERNAL; // access modifiers
	public ValaAccessModifierKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		extring kw = extring.set_static_string("public");
		PUBLIC = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("private");
		PRIVATE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("protected");
		PROTECTED = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("internal");
		INTERNAL = parser.addValaKeyword(&kw);
	}
}

/* @} */
