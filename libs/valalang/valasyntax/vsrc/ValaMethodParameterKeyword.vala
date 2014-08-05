using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaMethodParameterKeyword : ValaKeyword {
	int IN;int REF; // method parameter
	public ValaMethodParameterKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		var kw = extring.set_static_string("in");
		IN = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("ref");
		REF = parser.addValaKeyword(&kw);
	}
}

/* @} */
