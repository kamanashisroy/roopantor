using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaAccessModifierKeyword : ValaKeyword {
	int PUBLIC;int PRIVATE;int PROTECTED;int INTERNAL; // access modifiers
	public ValaAccessModifierKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
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
