using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaMethodParameterKeyword : ValaKeyword {
	int IN;int REF; // method parameter
	public ValaMethodParameterKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		var kw = extring.set_static_string("in");
		IN = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("ref");
		REF = parser.addValaKeyword(&kw);
	}
}

/* @} */
