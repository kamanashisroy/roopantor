using aroop;
using shotodol;
using valascan;
using valalang.valasemantics;

/** \addtogroup valalang.valasemantics
 *  @{
 */

public class valalang.valasemantics.Enum : Replicable {
	public extring name;
	public Enum() {
		name = extring();
	}
}
public class valalang.valasemantics.EnumParser : Replicable {
	ValaSourceMap pattern;
	public EnumParser() {
		pattern = new ValaSourceMap();
		extring pat = extring.set_static_string("enum x {__assignment__\\* __function__\\*}");
		pattern.concat(&pat);
	}

	public void propare(ValaTokenizer tokens) {
		tokens.process(pattern);
	}

	public void parse(ValaTokenizer tokens, ValaSourceMap content) {
		Enum?obj = new Enum();
		tokens.contains(pattern, content);
		/*tokens.match(&pattern, (x) => {
			obj.name.rebuild_and_copy_on_demand(x);
		});*/
	}
}

/* @} */
