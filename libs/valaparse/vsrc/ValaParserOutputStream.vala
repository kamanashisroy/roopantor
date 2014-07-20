using aroop;
using shotodol;
using valaparse;

/**
 * \ingroup valaparse
 * @{
 */

public class valaparse.ValaParserOutputStream : valalang.ValaOutputStream {
	ValaTokenizer vt;
	public ValaParserOutputStream() {
		vt = new ValaTokenizer();
	}

	public override int addValaKeyword(extring*kw) {
		return vt.addKeyWord(kw);
	}

	public override int write(extring*buf) throws IOStreamError.OutputStreamError {
		print("Parsing %s\n", buf.to_string());
		return 0;
	}
}

/** @} */
