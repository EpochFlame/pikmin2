#ifndef _GAME_BIGTREASURE_BIGTREASUREELECATTACK_H
#define _GAME_BIGTREASURE_BIGTREASUREELECATTACK_H

/*
    __vt__Q34Game11BigTreasure21BigTreasureElecAttack:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game11BigTreasure21BigTreasureElecAttackFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Game {
namespace BigTreasure {
	struct BigTreasureElecAttack : public CNode {
		virtual ~BigTreasureElecAttack(); // _00
		virtual void getChildCount();     // _04

		// _00 VTBL
	};
} // namespace BigTreasure
} // namespace Game

#endif
