using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaSelectionKeyword : ValaKeyword {
	int IF;int ELSE;int SWITCH;int CASE;int DEFAULT; // selection
	public ValaSelectionKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		extring kw = extring.set_static_string("if");
		IF = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("else");
		ELSE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("switch");
		SWITCH = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("case");
		CASE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("default");
		DEFAULT = parser.addValaKeyword(&kw);
	}
}

/* @} */
