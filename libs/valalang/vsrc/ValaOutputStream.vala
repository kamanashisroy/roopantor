using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

public abstract class valalang.ValaOutputStream : OutputStream {
	public ValaOutputStream() {
		base();
	}
	public virtual int addValaKeyword(extring*kw) {
		return 0;
	}
}

/* @} */
