using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaAccessKeyword : ValaKeyword {
	int THIS;int BASE; // selection
	public ValaAccessKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		extring kw = extring.set_static_string("this");
		THIS = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("base");
		BASE = parser.addValaKeyword(&kw);
	}
}

/* @} */
