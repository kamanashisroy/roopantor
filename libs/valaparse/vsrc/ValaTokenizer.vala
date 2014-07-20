using aroop;
using shotodol;
using onubodh;
using valaparse;

/**
 * \ingroup lib
 * \defgroup valaparse Vala Parser
 * @{
 */

public errordomain valaparse.ValaTokenizerError {
	INVALID_TAG,
}

public class valaparse.ValaTokenizer : onubodh.WordTransform {
	public ValaTokenizer() {
	}
	
#if false
	public int nextElem(XMLIterator*it) throws XMLParserError.INVALID_TAG {
		core.assert(it != null && nextElem != null);
		it.content.destroy();
		it.nextTag.destroy();
		it.attrShift = 0;
		it.attrEnd = 0;
		//it.shift = 0;
#if XMLPARSER_DEBUG
		etxt talk = etxt.stack(128);
		talk.printf("nextElem() ");
		it.dump(&talk);
#endif
		if(it.kernel.is_empty() || (it.pos >= it.kernel.length())) {
			return 0;
		}
		if(it.kernel.char_at(it.pos) == ANGLE_BRACE_OPEN) {
			return nextTagElem(it);
		} else {
			return nextTextElem(it);
		}
	}

	protected int nextTextElem(XMLIterator*it) {
		int i;
		int len = it.kernel.length();
		int textEnd = len;
		it.nextTag.destroy();
		// TODO we should use sandbox.indexof(char) function.
		for (i = it.pos;i<len; i++) {
			if(it.kernel.char_at(i) == ANGLE_BRACE_OPEN) {
				textEnd = i;
				break;
			}
		}
		it.content = etxt.same_same(&it.kernel);
		if(textEnd != len)it.content.trim_to_length(it.pos+textEnd);
		it.content.shift(it.pos);
		it.shift = it.pos;
		it.pos+=textEnd;
		it.nextIsText = true;
		return 0;
	}

	protected int nextTagElem(XMLIterator*it) throws XMLParserError.INVALID_TAG {
		int i;
		int len = it.kernel.length();
		int angleBraceStart = -1;
		it.nextTag.destroy();
		it.nextIsText = false;
		int depth = 0;
		bool attrGrabbed = false;
		it.attrShift = 0;
		it.attrEnd = 0;
		// TODO we should use sandbox.indexof(char) function.
		core.assert(it.kernel.char_at(it.pos) == ANGLE_BRACE_OPEN);
		angleBraceStart = it.pos;
#if XMLPARSER_DEBUG
		etxt talkative = etxt.stack(100);
#endif
		for (i = it.pos;i<len; i++) {
			if(it.kernel.char_at(i) == ANGLE_BRACE_OPEN) {
				depth++;
				if((i+1) < len && it.kernel.char_at(i+1) == INDICATE_TAG_END) {
					depth-=2;
				}
				if(i+1 < len) {
					if(it.nextTag.is_empty()) {
						etxt currentTag = etxt.EMPTY();
						it.m.getNonKeyWord(it.basePos + i+1, &currentTag);
						it.nextTag = etxt.same_same(&currentTag);
						//print("start tag:%s:depth:%d\n", currentTag.to_string(), depth);
#if XMLPARSER_DEBUG
						talkative.printf("< - ");talkative.concat(&currentTag);it.dump(&talkative);
#endif
					}
				}
			} else if(it.kernel.char_at(i) == ANGLE_BRACE_CLOSE) {
				if(!attrGrabbed) {
					core.assert(depth == 1);
					attrGrabbed = true;
					it.attrShift = 2;
					it.attrEnd = i - angleBraceStart;
				}
				if(i != 0 && it.kernel.char_at(i-1) == INDICATE_TAG_END) {
					depth--;
				}
				if(depth == 0) {
					etxt currentTag = etxt.EMPTY();
					it.m.getNonKeyWord(it.basePos + i-1, &currentTag);
					if(!currentTag.equals(&it.nextTag)) {
						core.assert(4==8);
						throw new XMLParserError.INVALID_TAG("Invalid tag end");
					}
#if XMLPARSER_DEBUG
					talkative.printf("> - ");talkative.concat(&currentTag);it.dump(&talkative);
#endif
					it.content = etxt.EMPTY();
					it.content = etxt.same_same(&it.kernel);
					it.content.trim_to_length(i+1);
					it.content.shift(angleBraceStart);
					it.shift = angleBraceStart;
					it.pos = i+1;
#if XMLPARSER_DEBUG
					talkative.printf("> - ");talkative.concat(&currentTag);it.dump(&talkative);
#endif
					//it.pos += i;
					return 0;
				}
			}
		}
#if XMLPARSER_DEBUG
		talkative.printf("Unreachable code ");it.dump(&talkative);
		//core.assert(0==1); // it should not be reached for valid xml
#endif
		it.pos = len;
		return 0;
	}
#endif
}

/** @} */
