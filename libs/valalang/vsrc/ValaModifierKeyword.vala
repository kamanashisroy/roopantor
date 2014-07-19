using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaModifierKeyword : ValaKeyword {
	int CONST;int WEAK;int UNOWNED;int DYNAMIC; // type modifiers
	public ValaModifierKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		var kw = extring.set_static_string("const");
		CONST = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("weak");
		WEAK = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("unowned");
		UNOWNED = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("dynamic");
		DYNAMIC = parser.addValaKeyword(&kw);
	}
}

/* @} */
