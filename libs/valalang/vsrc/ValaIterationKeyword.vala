using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaIterationKeyword : ValaKeyword {
	int DO;int WHILE;int FOR;int FOREACH;int IN; // iteration
	public ValaIterationKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		var kw = extring.set_static_string("do");
		DO = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("while");
		WHILE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("for");
		FOR = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("foreach");
		FOREACH = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("in");
		IN = parser.addValaKeyword(&kw);
	}
}

/* @} */
