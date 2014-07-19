using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaLiteralKeyword : ValaKeyword {
	int NULL;int TRUE;int FALSE; // literal keywords
	public ValaLiteralKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		var kw = extring.set_static_string("null");
		NULL = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("true");
		TRUE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("false");
		FALSE = parser.addValaKeyword(&kw);
	}
}

/* @} */
