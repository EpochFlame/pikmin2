#ifndef _GAME_QUEEN_QUEENSHADOWNODE_H
#define _GAME_QUEEN_QUEENSHADOWNODE_H

/*
    __vt__Q34Game5Queen15QueenShadowNode:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game5Queen15QueenShadowNodeFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Game {
namespace Queen {
	struct QueenShadowNode : public CNode {
		virtual ~QueenShadowNode();   // _00
		virtual void getChildCount(); // _04

		// _00 VTBL
	};
} // namespace Queen
} // namespace Game

#endif
