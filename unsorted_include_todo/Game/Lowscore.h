#ifndef _GAME_LOWSCORE_H
#define _GAME_LOWSCORE_H

/*
    __vt__Q24Game8Lowscore:
    .4byte 0
    .4byte 0
    .4byte do_higher__Q24Game8LowscoreFii
    .4byte 0
*/

namespace Game {
struct Lowscore {
	virtual void do_higher(int, int); // _00
	virtual void _04() = 0;           // _04

	// _00 VTBL
};
} // namespace Game

#endif
