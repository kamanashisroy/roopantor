using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaTypeDeclarationKeyword : ValaKeyword {
	int CLASS;int INTERFACE;int STRUCT;int ENUM;int DELEGATE;int ERRORDOMAIN; // type declaration
	public ValaTypeDeclarationKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		var kw = extring.set_static_string("class");
		CLASS = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("interface");
		INTERFACE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("struct");
		STRUCT = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("enum");
		ENUM = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("delegate");
		DELEGATE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("errordomain");
		ERRORDOMAIN = parser.addValaKeyword(&kw);
	}
}

/* @} */
