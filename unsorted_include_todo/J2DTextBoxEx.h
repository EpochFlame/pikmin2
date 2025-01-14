#ifndef _J2DTEXTBOXEX_H
#define _J2DTEXTBOXEX_H

/*
    __vt__12J2DTextBoxEx:
    .4byte 0
    .4byte 0
    .4byte __dt__12J2DTextBoxExFv
    .4byte getTypeID__10J2DTextBoxCFv
    .4byte move__7J2DPaneFff
    .4byte add__7J2DPaneFff
    .4byte resize__10J2DTextBoxFff
    .4byte setCullBack__12J2DTextBoxExFb
    .4byte setCullBack__12J2DTextBoxExF11_GXCullMode
    .4byte setAlpha__12J2DTextBoxExFUc
    .4byte setConnectParent__10J2DTextBoxFb
    .4byte calcMtx__7J2DPaneFv
    .4byte update__7J2DPaneFv
    .4byte drawSelf__10J2DTextBoxFff
    .4byte drawSelf__12J2DTextBoxExFffPA3_A4_f
    .4byte search__7J2DPaneFUx
    .4byte searchUserInfo__7J2DPaneFUx
    .4byte makeMatrix__7J2DPaneFff
    .4byte makeMatrix__7J2DPaneFffff
    .4byte isUsed__12J2DTextBoxExFPC7ResTIMG
    .4byte isUsed__12J2DTextBoxExFPC7ResFONT
    .4byte clearAnmTransform__7J2DPaneFv
    .4byte rewriteAlpha__12J2DTextBoxExFv
    .4byte setAnimation__12J2DTextBoxExFP10J2DAnmBase
    .4byte setAnimation__12J2DTextBoxExFP15J2DAnmTransform
    .4byte setAnimation__12J2DTextBoxExFP11J2DAnmColor
    .4byte setAnimation__12J2DTextBoxExFP16J2DAnmTexPattern
    .4byte setAnimation__12J2DTextBoxExFP19J2DAnmTextureSRTKey
    .4byte setAnimation__12J2DTextBoxExFP15J2DAnmTevRegKey
    .4byte setAnimation__12J2DTextBoxExFP20J2DAnmVisibilityFull
    .4byte setAnimation__12J2DTextBoxExFP14J2DAnmVtxColor
    .4byte animationTransform__7J2DPaneFPC15J2DAnmTransform
    .4byte setVisibileAnimation__7J2DPaneFP20J2DAnmVisibilityFull
    .4byte setAnimationVF__7J2DPaneFP20J2DAnmVisibilityFull
    .4byte setVtxColorAnimation__7J2DPaneFP14J2DAnmVtxColor
    .4byte setAnimationVC__7J2DPaneFP14J2DAnmVtxColor
    .4byte animationPane__12J2DTextBoxExFPC15J2DAnmTransform
    .4byte draw__12J2DTextBoxExFff
    .4byte draw__12J2DTextBoxExFfff18J2DTextBoxHBinding
    .4byte setFont__12J2DTextBoxExFP7JUTFont
    .4byte getFont__12J2DTextBoxExCFv
    .4byte setBlack__12J2DTextBoxExFQ28JUtility6TColor
    .4byte setWhite__12J2DTextBoxExFQ28JUtility6TColor
    .4byte setBlackWhite__12J2DTextBoxExFQ28JUtility6TColorQ28JUtility6TColor
    .4byte getBlack__12J2DTextBoxExCFv
    .4byte getWhite__12J2DTextBoxExCFv
    .4byte getMaterial__12J2DTextBoxExCFv
    .4byte 0
*/

struct J2DTextBox {
	virtual void _00() = 0;              // _00
	virtual void getTypeID() const;      // _04
	virtual void _08() = 0;              // _08
	virtual void _0C() = 0;              // _0C
	virtual void resize(float, float);   // _10
	virtual void _14() = 0;              // _14
	virtual void _18() = 0;              // _18
	virtual void _1C() = 0;              // _1C
	virtual void setConnectParent(bool); // _20
	virtual void _24() = 0;              // _24
	virtual void _28() = 0;              // _28
	virtual void drawSelf(float, float); // _2C

	// _00 VTBL
};

struct J2DPane {
	virtual void _00() = 0;                                   // _00
	virtual void _04() = 0;                                   // _04
	virtual void move(float, float);                          // _08
	virtual void add(float, float);                           // _0C
	virtual void _10() = 0;                                   // _10
	virtual void _14() = 0;                                   // _14
	virtual void _18() = 0;                                   // _18
	virtual void _1C() = 0;                                   // _1C
	virtual void _20() = 0;                                   // _20
	virtual void calcMtx();                                   // _24
	virtual void update();                                    // _28
	virtual void _2C() = 0;                                   // _2C
	virtual void _30() = 0;                                   // _30
	virtual void search(unsigned long long);                  // _34
	virtual void searchUserInfo(unsigned long long);          // _38
	virtual void makeMatrix(float, float);                    // _3C
	virtual void makeMatrix(float, float, float, float);      // _40
	virtual void _44() = 0;                                   // _44
	virtual void _48() = 0;                                   // _48
	virtual void clearAnmTransform();                         // _4C
	virtual void _50() = 0;                                   // _50
	virtual void _54() = 0;                                   // _54
	virtual void _58() = 0;                                   // _58
	virtual void _5C() = 0;                                   // _5C
	virtual void _60() = 0;                                   // _60
	virtual void _64() = 0;                                   // _64
	virtual void _68() = 0;                                   // _68
	virtual void _6C() = 0;                                   // _6C
	virtual void _70() = 0;                                   // _70
	virtual void animationTransform(const J2DAnmTransform*);  // _74
	virtual void setVisibileAnimation(J2DAnmVisibilityFull*); // _78
	virtual void setAnimationVF(J2DAnmVisibilityFull*);       // _7C
	virtual void setVtxColorAnimation(J2DAnmVtxColor*);       // _80
	virtual void setAnimationVC(J2DAnmVtxColor*);             // _84

	// _00 VTBL
};

struct J2DTextBoxEx : public J2DTextBox, public J2DPane {
	virtual ~J2DTextBoxEx();                                        // _00
	virtual void getTypeID() const;                                 // _04
	virtual void move(float, float);                                // _08
	virtual void add(float, float);                                 // _0C
	virtual void resize(float, float);                              // _10
	virtual void setCullBack(bool);                                 // _14
	virtual void setCullBack(_GXCullMode);                          // _18
	virtual void setAlpha(unsigned char);                           // _1C
	virtual void setConnectParent(bool);                            // _20
	virtual void calcMtx();                                         // _24
	virtual void update();                                          // _28
	virtual void drawSelf(float, float);                            // _2C
	virtual void drawSelf(float, float, float (*)[3][4]);           // _30
	virtual void search(unsigned long long);                        // _34
	virtual void searchUserInfo(unsigned long long);                // _38
	virtual void makeMatrix(float, float);                          // _3C
	virtual void makeMatrix(float, float, float, float);            // _40
	virtual void isUsed(const ResTIMG*);                            // _44
	virtual void isUsed(const ResFONT*);                            // _48
	virtual void clearAnmTransform();                               // _4C
	virtual void rewriteAlpha();                                    // _50
	virtual void setAnimation(J2DAnmBase*);                         // _54
	virtual void setAnimation(J2DAnmTransform*);                    // _58
	virtual void setAnimation(J2DAnmColor*);                        // _5C
	virtual void setAnimation(J2DAnmTexPattern*);                   // _60
	virtual void setAnimation(J2DAnmTextureSRTKey*);                // _64
	virtual void setAnimation(J2DAnmTevRegKey*);                    // _68
	virtual void setAnimation(J2DAnmVisibilityFull*);               // _6C
	virtual void setAnimation(J2DAnmVtxColor*);                     // _70
	virtual void animationTransform(const J2DAnmTransform*);        // _74
	virtual void setVisibileAnimation(J2DAnmVisibilityFull*);       // _78
	virtual void setAnimationVF(J2DAnmVisibilityFull*);             // _7C
	virtual void setVtxColorAnimation(J2DAnmVtxColor*);             // _80
	virtual void setAnimationVC(J2DAnmVtxColor*);                   // _84
	virtual void animationPane(const J2DAnmTransform*);             // _88
	virtual void draw(float, float);                                // _8C
	virtual void draw(float, float, float, J2DTextBoxHBinding);     // _90
	virtual void setFont(JUTFont*);                                 // _94
	virtual void getFont() const;                                   // _98
	virtual void setBlack(JUtility::TColor);                        // _9C
	virtual void setWhite(JUtility::TColor);                        // _A0
	virtual void setBlackWhite(JUtility::TColor, JUtility::TColor); // _A4
	virtual void getBlack() const;                                  // _A8
	virtual void getWhite() const;                                  // _AC
	virtual void getMaterial() const;                               // _B0
	virtual void _B4() = 0;                                         // _B4

	// _00 VTBL
};

#endif
