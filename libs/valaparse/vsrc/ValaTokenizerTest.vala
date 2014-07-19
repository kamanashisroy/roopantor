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
		ValaTokenizer fileprocessor = new ValaTokenizer();
		var testcode = xtring.set_static_string("var x = xtring();");
		fileprocessor.parse(&testcode);
		return 0;
	}
}

/* @} */
