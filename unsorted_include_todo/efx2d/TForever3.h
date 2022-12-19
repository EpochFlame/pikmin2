#ifndef _EFX2D_TFOREVER3_H
#define _EFX2D_TFOREVER3_H

/*
    __vt__Q25efx2d9TForever3:
    .4byte 0
    .4byte 0
    .4byte create__Q25efx2d9TForeverNFPQ25efx2d3Arg
    .4byte kill__Q25efx2d9TForeverNFv
    .4byte fade__Q25efx2d9TForeverNFv
    .4byte setGroup__Q25efx2d9TForeverNFUc
*/

namespace efx2d {
struct TForeverN {
	virtual void create(Arg*);            // _08
	virtual void kill();                  // _0C
	virtual void fade();                  // _10
	virtual void setGroup(unsigned char); // _14
};
} // namespace efx2d

namespace efx2d {
struct TForever3 : public TForeverN {
};
} // namespace efx2d

#endif