#ifndef _GAME_CHALLENGEGAME_STAGELIST_H
#define _GAME_CHALLENGEGAME_STAGELIST_H

/*
    __vt__Q34Game13ChallengeGame9StageList:
    .4byte 0
    .4byte 0
    .4byte __dt__Q34Game13ChallengeGame9StageListFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Game {
namespace ChallengeGame {
	struct StageList : public CNode {
		virtual Challenge ~StageList(); // _00
		virtual void getChildCount();   // _04

		// _00 VTBL
	};
} // namespace ChallengeGame
} // namespace Game

#endif
