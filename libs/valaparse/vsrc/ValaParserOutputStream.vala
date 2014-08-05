using aroop;
using shotodol;
using valaparse;
using valalang;

/**
 * \ingroup valaparse
 * @{
 */

public class valaparse.ValaParserOutputStream : valalang.ValaOutputStream {
	public ValaTokenizer vt;
	public ValaSourceMap vsrc;
	public ValaParserOutputStream() {
		vt = new ValaTokenizer();
		vsrc = new ValaSourceMap();
	}

	public int rehash() {
		var kwx = extring.set_static_string("keywords");
		var x = (AnyInterfaceExtension)Plugin.get(&kwx);
		do {
			var kw = (ValaKeyword)x.getInterface(null);
			kw.rehash(this);
			var xnext = (AnyInterfaceExtension)x.getNext();
			x = xnext;
		} while(x != null);
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
