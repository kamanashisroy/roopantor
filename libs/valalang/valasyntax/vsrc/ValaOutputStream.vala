using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

public abstract class valalang.valasyntax.ValaOutputStream : OutputStream {
	public ValaOutputStream() {
		base();
	}
	public virtual int addValaKeyword(extring*kw) {
		return 0;
	}
}

/* @} */
