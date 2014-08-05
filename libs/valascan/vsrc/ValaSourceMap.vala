using aroop;
using shotodol;
using onubodh;
using valascan;

public errordomain valascan.ValaSourceError {
	TOO_BIG,
}
/**
 * \ingroup lib
 * \defgroup valaparse Vala Parser
 * @{
 */
public class valascan.ValaSourceMap : Replicable {
	public WordMap map;
	public ValaSourceMap(int sourceLength = 1024) {
		map = WordMap();
		map.kernel.buffer(sourceLength);
		map.map.buffer(sourceLength);
		map.source.buffer(sourceLength);
	}

	public void concat(extring*buf) throws ValaSourceError.TOO_BIG {
		if(map.source.length() + buf.length() > map.source.size()) {
			throw new ValaSourceError.TOO_BIG("Buffer full");
		}
		map.source.concat(buf);
	}

	public void buildIterator(ValaTokenizerIterator*vit) {
		vit.build(&map);
	}
}

/** @} */

