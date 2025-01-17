#ifndef _P2JME_WINDOW_TRENDERINGPROCESSOR_H
#define _P2JME_WINDOW_TRENDERINGPROCESSOR_H

/*
    __vt__Q35P2JME6Window19TRenderingProcessor:
    .4byte 0
    .4byte 0
    .4byte __dt__Q35P2JME6Window19TRenderingProcessorFv
    .4byte do_reset__Q28JMessage10TProcessorFv
    .4byte do_character__Q25P2JME19TRenderingProcessorFi
    .4byte do_tag__Q25P2JME19TRenderingProcessorFUlPCvUl
    .4byte do_systemTagCode__Q25P2JME19TRenderingProcessorFUsPCvUl
    .4byte do_select_begin__Q25P2JME19TRenderingProcessorFUl
    .4byte do_select_end__Q25P2JME19TRenderingProcessorFv
    .4byte do_select_separate__Q25P2JME19TRenderingProcessorFv
    .4byte do_reset___Q28JMessage19TRenderingProcessorFPCc
    .4byte do_setBegin_isReady___Q28JMessage10TProcessorCFv
    .4byte do_begin___Q28JMessage19TRenderingProcessorFPCvPCc
    .4byte do_end___Q28JMessage19TRenderingProcessorFv
    .4byte do_tag___Q28JMessage19TRenderingProcessorFUlPCvUl
    .4byte do_systemTagCode___Q28JMessage19TRenderingProcessorFUsPCvUl
    .4byte do_begin__Q25P2JME19TRenderingProcessorFPCvPCc
    .4byte do_end__Q28JMessage19TRenderingProcessorFv
    .4byte tagColor__Q25P2JME19TRenderingProcessorFPCvUl
    .4byte tagSize__Q25P2JME19TRenderingProcessorFPCvUl
    .4byte tagRuby__Q25P2JME19TRenderingProcessorFPCvUl
    .4byte tagFont__Q25P2JME19TRenderingProcessorFPCvUl
    .4byte tagImage__Q25P2JME19TRenderingProcessorFUsPCvUl
    .4byte tagColorEX__Q25P2JME19TRenderingProcessorFUsPCvUl
    .4byte tagControl__Q25P2JME19TRenderingProcessorFUsPCvUl
    .4byte tagPosition__Q25P2JME19TRenderingProcessorFUsPCvUl
    .4byte update__Q35P2JME6Window19TRenderingProcessorFv
    .4byte reset__Q35P2JME6Window19TRenderingProcessorFv
    .4byte newParagraph__Q25P2JME19TRenderingProcessorFv
    .4byte doDrawImage__Q35P2JME6Window19TRenderingProcessorFP10JUTTextureffff
    .4byte doDrawRuby__Q35P2JME6Window19TRenderingProcessorFffffib
    .4byte doDrawLetter__Q35P2JME6Window19TRenderingProcessorFffffib
    .4byte doTagControlAbtnWait__Q25P2JME19TRenderingProcessorFv
    .4byte
   doDrawCommon__Q35P2JME6Window19TRenderingProcessorFffP7MatrixfP7Matrixf
    .4byte
   "makeMatrix__Q35P2JME6Window19TRenderingProcessorFP7MatrixfPQ35P2JME6Window8DrawInfof10Vector3<f>"
    .4byte
   doGetDrawInfo__Q35P2JME6Window19TRenderingProcessorFPQ35P2JME6Window8DrawInfo
*/

namespace JMessage {
struct TProcessor {
	virtual ~TProcessor();                                          // _00
	virtual void do_reset();                                        // _04
	virtual void do_character(int);                                 // _08
	virtual void do_tag(unsigned long, const void*, unsigned long); // _0C
	virtual void do_systemTagCode(unsigned short, const void*,
	                              unsigned long); // _10
	virtual void do_select_begin(unsigned long);  // _14
	virtual void do_select_end();                 // _18
	virtual void do_select_separate();            // _1C
	virtual void do_reset_(const char*);          // _20
	virtual void do_setBegin_isReady_() const;    // _24

	// _00 VTBL
};
} // namespace JMessage

namespace P2JME {
namespace Window {
	struct TRenderingProcessor : public TProcessor {
		virtual ~TRenderingProcessor();                                 // _00
		virtual void do_reset();                                        // _04
		virtual void do_character(int);                                 // _08
		virtual void do_tag(unsigned long, const void*, unsigned long); // _0C
		virtual void do_systemTagCode(unsigned short, const void*,
		                              unsigned long);                    // _10
		virtual void do_select_begin(unsigned long);                     // _14
		virtual void do_select_end();                                    // _18
		virtual void do_select_separate();                               // _1C
		virtual void do_reset_(const char*);                             // _20
		virtual void do_setBegin_isReady_() const;                       // _24
		virtual void do_begin_(const void*, const char*);                // _28
		virtual void do_end_();                                          // _2C
		virtual void do_tag_(unsigned long, const void*, unsigned long); // _30
		virtual void do_systemTagCode_(unsigned short, const void*,
		                               unsigned long);     // _34
		virtual void do_begin(const void*, const char*);   // _38
		virtual void do_end();                             // _3C
		virtual void tagColor(const void*, unsigned long); // _40
		virtual void tagSize(const void*, unsigned long);  // _44
		virtual void tagRuby(const void*, unsigned long);  // _48
		virtual void tagFont(const void*, unsigned long);  // _4C
		virtual void tagImage(unsigned short, const void*,
		                      unsigned long); // _50
		virtual void tagColorEX(unsigned short, const void*,
		                        unsigned long); // _54
		virtual void tagControl(unsigned short, const void*,
		                        unsigned long); // _58
		virtual void tagPosition(unsigned short, const void*,
		                         unsigned long); // _5C
		virtual void update();                   // _60
		virtual void reset();                    // _64
		virtual void newParagraph();             // _68
		virtual void doDrawImage(JUTTexture*, float, float, float,
		                         float);                                  // _6C
		virtual void doDrawRuby(float, float, float, float, int, bool);   // _70
		virtual void doDrawLetter(float, float, float, float, int, bool); // _74
		virtual void doTagControlAbtnWait();                              // _78
		virtual void doDrawCommon(float, float, Matrixf*, Matrixf*);      // _7C
		virtual void makeMatrix(Matrixf*, DrawInfo*, float,
		                        Vector3<float>); // _80
		virtual void doGetDrawInfo(DrawInfo*);   // _84

		// _00 VTBL
	};
} // namespace Window
} // namespace P2JME

#endif
