using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaNamespaceKeyword : ValaKeyword {
	int NAMESPACE;int USING; // selection
	public ValaNamespaceKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		extring kw = extring.set_static_string("namespace");
		NAMESPACE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("using");
		USING = parser.addValaKeyword(&kw);
	}
}

/* @} */
