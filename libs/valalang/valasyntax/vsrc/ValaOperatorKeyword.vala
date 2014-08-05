using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaOperatorKeyword : ValaKeyword {
	int AS;int IS;int IN;int NEW;int DELETE;int SIZEOF;int TYPEOF; // operator keywords
	public ValaOperatorKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		var kw = extring.set_static_string("as");
		AS = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("is");
		IS = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("in");
		IN = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("new");
		NEW = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("delete");
		DELETE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("typeof");
		TYPEOF = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("sizeof");
		SIZEOF = parser.addValaKeyword(&kw);
	}
}

/* @} */
