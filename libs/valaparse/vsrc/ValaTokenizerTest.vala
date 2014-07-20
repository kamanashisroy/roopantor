using aroop;
using shotodol;
using valaparse;

/** \addtogroup valaparse
 *  @{
 */
public class valaparse.ValaTokenizerTest : UnitTest {
	public ValaTokenizerTest() {
		extring tname = extring.set_static_string("ValaTokenizer Test");
		base(&tname);
	}

	public override int test() throws UnitTestError {
		var fileprocessor = new ValaParserOutputStream();
		var testcode = extring.set_static_string("var x = new xtring();");
		fileprocessor.write(&testcode);
		return 0;
	}
}

/* @} */
