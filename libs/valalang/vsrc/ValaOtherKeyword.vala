using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaOtherKeyword : ValaKeyword {
	int VOID;int VAR;int YIELD;int GLOBAL;int OWNED;// other
	public ValaOtherKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		var kw = extring.set_static_string("void");
		VOID = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("var");
		VAR = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("yield");
		YIELD = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("global");
		GLOBAL = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("owned");
		OWNED = parser.addValaKeyword(&kw);
	}
}

/* @} */
