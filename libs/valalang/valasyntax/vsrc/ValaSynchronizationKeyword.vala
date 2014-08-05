using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaSynchronizationKeyword : ValaKeyword {
	int LOCK; // selection
	public ValaSynchronizationKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		extring kw = extring.set_static_string("lock");
		LOCK = parser.addValaKeyword(&kw);
	}
}

/* @} */
