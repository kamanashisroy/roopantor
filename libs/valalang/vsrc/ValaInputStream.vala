using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

public abstract class valalang.ValaInputStream : InputStream {
	public ValaInputStream() {
		base();
	}
	public virtual int addValaKeyword(extring*kw) {
		return 0;
	}
}

/* @} */
