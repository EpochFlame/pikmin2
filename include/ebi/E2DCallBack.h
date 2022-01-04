#ifndef _EBI_E2DCALLBACK_H
#define _EBI_E2DCALLBACK_H

#include "ebi/E2DFullFontColor.h"
#include "JSystem/J2D/J2DGrafContext.h"
#include "JSystem/J3D/J3DAnmBase.h"
#include "JSystem/J3D/J3DFrameCtrl.h"
#include "JSystem/JGeometry.h"
#include "og/Screen/ScaleMgr.h"
#include "P2DScreen.h"
#include "types.h"

namespace ebi {
struct E2DCallBack_Base : public P2DScreen::CallBackNode {
	inline E2DCallBack_Base()
	    : _1C(1)
	{
	}
	virtual ~E2DCallBack_Base();                      // _00
	virtual void update();                            // _08
	virtual void draw(Graphics&, J2DGrafContext&);    // _0C
	virtual void do_update();                         // _14
	virtual void do_draw(Graphics&, J2DGrafContext&); // _18

	u8 _1C; // _1C
};

// Size: 0x3C
struct E2DCallBack_AnmBase : public E2DCallBack_Base {
	E2DCallBack_AnmBase();

	virtual ~E2DCallBack_AnmBase(); // _00
	virtual void do_update();       // _14

	void disconnect();
	float getPlayFinRate();
	bool isFinish();
	void loadAnm(char*, JKRArchive*, long, long);
	void play(float, J3DAnmAttr, bool);
	void playBack(float, bool);
	void setEndFrame();
	void setRandFrame();
	void setStartFrame();
	void stop();

	J3DFrameCtrl m_frameCtrl; // _20
	J2DAnmBase* m_anm;        // _34
	bool m_isFinish;          // _38
};

struct E2DCallBack_BlinkAlpha : public E2DCallBack_Base {
	virtual ~E2DCallBack_BlinkAlpha(); // _00
	virtual void do_update();          // _14

	// TODO: _20 through _29 and BlinkFontColor's _40 through _49 are
	// suspiciously similar in usage....
	float _20; // _20
	float _24; // _24
	u8 _28;    // _28
	u8 _29;    // _29
	u32 : 0;   // set alignment to next 4-byte boundary
	u8 _2C;    // _2C
	u8 _2D;    // _2D
};

// Size: 0x4C
struct E2DCallBack_BlinkFontColor : public E2DCallBack_Base {
	E2DCallBack_BlinkFontColor();

	virtual ~E2DCallBack_BlinkFontColor(); // _00
	virtual void do_update();              // _14

	void set(J2DTextBox*, J2DTextBox*);
	void set(E2DFullFontColor&, E2DFullFontColor&);

	E2DFullFontColor _20[2]; // _20
	float _40;               // _40
	float _44;               // _44
	u8 _48;                  // _48
	u8 _49;                  // _49
};

struct E2DCallBack_CalcAnimation : public E2DCallBack_Base {
	E2DCallBack_CalcAnimation();

	virtual ~E2DCallBack_CalcAnimation(); // _00
	virtual void do_update();             // _14
};

// Size: 0x40
struct E2DCallBack_Purupuru : public E2DCallBack_Base {
	E2DCallBack_Purupuru();

	virtual ~E2DCallBack_Purupuru(); // _00
	virtual void do_update();        // _14

	og::Screen::ScaleMgr m_scaleMgr; // _20
	// TODO: Rename to `m_scale`
	float _3C; // _3C
};

struct E2DCallBack_WindowCursor : public E2DCallBack_Base {
	virtual ~E2DCallBack_WindowCursor(); // _00
	virtual void do_update();            // _14

	JGeometry::TBox2f _20;    // _20
	JGeometry::TBox2f _30;    // _30
	i32 _40;                 // _40
	u32 _44;                  // _44
	og::Screen::ScaleMgr _48; // _48
	float _64;                // _64
	J2DPane* _68;             // _68
};
} // namespace ebi

#endif
