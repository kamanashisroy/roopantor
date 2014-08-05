using aroop;
using shotodol;
using valalang.valasyntax;

/** \addtogroup valalang.valasyntax
 *  @{
 */

internal class valalang.valasyntax.ValaNamespaceKeyword : ValaKeyword {
	int NAMESPACE;int USING; // selection
	public ValaNamespaceKeyword() {
		base();
	}
	public override void rehash(ValaOutputStream parser) {
		extring kw = extring.set_static_string("namespace");
		NAMESPACE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("using");
		USING = parser.addValaKeyword(&kw);
	}
}

/* @} */
