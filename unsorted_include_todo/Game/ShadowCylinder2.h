#ifndef _GAME_SHADOWCYLINDER2_H
#define _GAME_SHADOWCYLINDER2_H

/*
    __vt__Q24Game15ShadowCylinder2:
    .4byte 0
    .4byte 0
    .4byte setFilterTextureID__Q24Game15ShadowCylinder2Fi
    .4byte drawInit__Q24Game15ShadowCylinder2Fv
    .4byte drawCylinder__Q24Game15ShadowCylinder2FR7Matrixfi
    .4byte drawFinish__Q24Game15ShadowCylinder2Fv
*/

namespace Game {
struct ShadowCylinder2 {
	virtual void setFilterTextureID(int);     // _00
	virtual void drawInit();                  // _04
	virtual void drawCylinder(Matrixf&, int); // _08
	virtual void drawFinish();                // _0C

	// _00 VTBL
};
} // namespace Game

#endif
