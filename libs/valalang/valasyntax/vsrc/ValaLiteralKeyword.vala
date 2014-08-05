using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaLiteralKeyword : ValaKeyword {
	int NULL;int TRUE;int FALSE; // literal keywords
	public ValaLiteralKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		var kw = extring.set_static_string("null");
		NULL = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("true");
		TRUE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("false");
		FALSE = parser.addValaKeyword(&kw);
	}
}

/* @} */
