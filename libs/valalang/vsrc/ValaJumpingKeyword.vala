using aroop;
using shotodol;
using valalang;

/** \addtogroup valalang
 *  @{
 */

internal class valalang.ValaJumpingKeyword : ValaKeyword {
	int BREAK;int CONTINUE;int RETURN; // jumping
	public ValaJumpingKeyword() {
		base();
	}
	public override void rehash(ValaInputStream parser) {
		var kw = extring.set_static_string("break");
		BREAK = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("continue");
		CONTINUE = parser.addValaKeyword(&kw);
		kw.rebuild_and_set_static_string("return");
		RETURN = parser.addValaKeyword(&kw);
	}
}

/* @} */
