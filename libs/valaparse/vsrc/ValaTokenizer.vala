using aroop;
using shotodol;
using onubodh;
using valaparse;

/**
 * \ingroup lib
 * \defgroup valaparse Vala Parser
 * @{
 */

public struct valaparse.ValaTokenizerIterator {
	public WordMap*m;
	public extring kernel;
	public int blockPos;
	public int blockLength;
	public ValaTokenizerIterator() {
			m = null;
			kernel = extring();
			blockPos = 0;
			blockLength = 0;		
	}
	public void build(WordMap*wm) {
			m = wm;
			kernel.rebuild_and_copy_shallow(&wm.kernel);
			blockPos = 0;
			blockLength = 0;		
	}
}

public class valaparse.ValaTokenizer : onubodh.WordTransform {
	public ValaTokenizer() {
	}

	public void process(ValaSourceMap vmap) {
		print("content length:%d\n", vmap.map.kernel.length());
		transform(&vmap.map);
		print("content length:%d\n", vmap.map.kernel.length());
	}

	public int contains(ValaSourceMap pat, ValaSourceMap content) {
		ValaTokenizerIterator vit = ValaTokenizerIterator();
		content.buildIterator(&vit);
		return match(&vit, &pat.map.kernel);
	}
	/**
	 * Look a pattern in the WordMap . 
	 * TODO
	 * support .* or .+ like(regular expression) patterns here.
	 */
	int match(ValaTokenizerIterator*vit, extring*givenPattern) {
		int len = vit.kernel.length();
		int i = 0;
		int j = 0;
		int patlen = givenPattern.length();
		print("content length:%d, starting from:%d, pattern len:%d\n", len, vit.blockPos, patlen);
		for (i = vit.blockPos;i<len; i++) {
			if(vit.kernel.char_at(i) == givenPattern.char_at(j)) {
				j++;
				if(j == patlen)
					return i-patlen;
			} else {
				j = 0;
			}
		}
		return -1;
	}
}

/** @} */
