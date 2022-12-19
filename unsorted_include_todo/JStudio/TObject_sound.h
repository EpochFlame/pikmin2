#ifndef _JSTUDIO_TOBJECT_SOUND_H
#define _JSTUDIO_TOBJECT_SOUND_H

/*
    __vt__Q27JStudio13TObject_sound:
    .4byte 0
    .4byte 0
    .4byte __dt__Q27JStudio13TObject_soundFv
    .4byte do_begin__Q27JStudio7TObjectFv
    .4byte do_end__Q27JStudio7TObjectFv
    .4byte do_paragraph__Q27JStudio13TObject_soundFUlPCvUl
    .4byte do_wait__Q27JStudio7TObjectFUl
    .4byte do_data__Q27JStudio7TObjectFPCvUlPCvUl
*/

namespace JStudio {
struct TObject {
	virtual ~TObject();                                                           // _08 (weak)
	virtual void do_begin();                                                      // _0C
	virtual void do_end();                                                        // _10
	virtual void do_paragraph(unsigned long, const void*, unsigned long);         // _14
	virtual void do_wait(unsigned long);                                          // _18
	virtual void do_data(const void*, unsigned long, const void*, unsigned long); // _1C
};
} // namespace JStudio

namespace JStudio {
struct TObject_sound : public TObject {
	virtual ~TObject_sound();                                             // _08 (weak)
	virtual void do_paragraph(unsigned long, const void*, unsigned long); // _14

	TObject_sound(const JStudio::stb::data::TParse_TBlock_object&, JStudio::TAdaptor_sound*);
};
} // namespace JStudio

#endif