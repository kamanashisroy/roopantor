using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaSynchronizationKeyword : ValaKeyword {
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
