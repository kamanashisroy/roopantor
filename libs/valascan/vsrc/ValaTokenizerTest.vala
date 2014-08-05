using aroop;
using shotodol;
using valascan;

/** \addtogroup valaparse
 *  @{
 */
internal class valascan.ValaTokenizerTest : UnitTest {
	public ValaTokenizerTest() {
		extring tname = extring.set_static_string("ValaTokenizer");
		base(&tname);
	}

	public override int test() throws UnitTestError {
		var fileprocessor = new ValaParserOutputStream();
		var testcode = extring.set_static_string("var x = new xtring();");
		fileprocessor.rehash();
		fileprocessor.write(&testcode);
		fileprocessor.vt.process(fileprocessor.vsrc);
		var expressionPattern = extring.set_static_string("new x()");
		ValaSourceMap pattern = new ValaSourceMap();
		pattern.concat(&expressionPattern);
		fileprocessor.vt.process(pattern);
		int i = fileprocessor.vt.contains(pattern, fileprocessor.vsrc);
		print("returned %d\n", i);
		if(i!=2)throw new UnitTestError.FAILED("Failed\n");
		return 0;
	}
}

/* @} */
