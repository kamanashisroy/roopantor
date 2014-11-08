using aroop;
using shotodol;
using valascan;
using valalang.valasyntax;

/**
 * \ingroup valaparse
 * @{
 */

public class valascan.ValaParserOutputStream : ValaOutputStream {
	public ValaTokenizer vt;
	public ValaSourceMap vsrc;
	public ValaParserOutputStream() {
		vt = new ValaTokenizer();
		vsrc = new ValaSourceMap();
	}

	public int rehash() {
		var kwx = extring.set_static_string("keywords");
		Plugin.acceptVisitor(&kwx, (x) => {
			var kw = (ValaKeyword)x.getInterface(null);
			kw.rehash(this);
		});
		return 0;
	}

	public override int addValaKeyword(extring*kw) {
		return vt.addKeyWord(kw);
	}

	public override int write(extring*buf) throws IOStreamError.OutputStreamError {
		print("Parsing %s\n", buf.to_string());
		vsrc.concat(buf);
		return 0;
	}
}

/** @} */
