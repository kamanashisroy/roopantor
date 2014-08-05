using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaExceptionKeyword : ValaKeyword {
	int TRY;int CATCH;int FINALLY;int THROW; // exception handling
	public ValaExceptionKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
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
