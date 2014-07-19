using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaExceptionKeyword : ValaKeyword {
	int TRY;int CATCH;int FINALLY;int THROW; // exception handling
	public ValaExceptionKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		extring kw = extring.set_static_string("try");
		TRY = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("catch");
		CATCH = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("finally");
		FINALLY = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("throw");
		THROW = parser.addValaKeyword(&kw);
	}
}

/* @} */
