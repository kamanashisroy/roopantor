using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaPropertyKeyword : ValaKeyword {
	int GET;int SET;int CONSTRUCT;int DEFAULT;int VALUE; // property context
	public ValaPropertyKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		extring kw = extring.set_static_string("get");
		GET = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("set");
		SET = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("construct");
		CONSTRUCT = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("default");
		DEFAULT = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("value");
		VALUE = parser.addValaKeyword(&kw);
	}
}

/* @} */
