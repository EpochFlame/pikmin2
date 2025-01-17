#ifndef _J3DINDBLOCK_H
#define _J3DINDBLOCK_H

/*
    __vt__11J3DIndBlock:
    .4byte 0
    .4byte 0
    .4byte reset__11J3DIndBlockFP11J3DIndBlock
    .4byte 0
    .4byte 0
    .4byte countDLSize__11J3DIndBlockFv
    .4byte 0
    .4byte setIndTexStageNum__11J3DIndBlockFUc
    .4byte getIndTexStageNum__11J3DIndBlockCFv
    .4byte setIndTexOrder__11J3DIndBlockFUl14J3DIndTexOrder
    .4byte setIndTexOrder__11J3DIndBlockFUlPC14J3DIndTexOrder
    .4byte getIndTexOrder__11J3DIndBlockFUl
    .4byte setIndTexMtx__11J3DIndBlockFUlPC12J3DIndTexMtx
    .4byte setIndTexMtx__11J3DIndBlockFUl12J3DIndTexMtx
    .4byte getIndTexMtx__11J3DIndBlockFUl
    .4byte setIndTexCoordScale__11J3DIndBlockFUlPC19J3DIndTexCoordScale
    .4byte setIndTexCoordScale__11J3DIndBlockFUl19J3DIndTexCoordScale
    .4byte getIndTexCoordScale__11J3DIndBlockFUl
    .4byte __dt__11J3DIndBlockFv
*/

struct J3DIndBlock {
	virtual void reset(J3DIndBlock*);                                  // _00
	virtual void _04() = 0;                                            // _04
	virtual void _08() = 0;                                            // _08
	virtual void countDLSize();                                        // _0C
	virtual void _10() = 0;                                            // _10
	virtual void setIndTexStageNum(unsigned char);                     // _14
	virtual void getIndTexStageNum() const;                            // _18
	virtual void setIndTexOrder(unsigned long, J3DIndTexOrder);        // _1C
	virtual void setIndTexOrder(unsigned long, const J3DIndTexOrder*); // _20
	virtual void getIndTexOrder(unsigned long);                        // _24
	virtual void setIndTexMtx(unsigned long, const J3DIndTexMtx*);     // _28
	virtual void setIndTexMtx(unsigned long, J3DIndTexMtx);            // _2C
	virtual void getIndTexMtx(unsigned long);                          // _30
	virtual void setIndTexCoordScale(unsigned long,
	                                 const J3DIndTexCoordScale*);         // _34
	virtual void setIndTexCoordScale(unsigned long, J3DIndTexCoordScale); // _38
	virtual void getIndTexCoordScale(unsigned long);                      // _3C
	virtual ~J3DIndBlock();                                               // _40

	// _00 VTBL
};

#endif
