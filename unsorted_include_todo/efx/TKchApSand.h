#ifndef _EFX_TKCHAPSAND_H
#define _EFX_TKCHAPSAND_H

/*
    __vt__Q23efx10TKchApSand:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx10TKchApSandFPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple3Fv
    .4byte fade__Q23efx8TSimple3Fv
*/

namespace efx {
struct TSimple3 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct TKchApSand : public TSimple3 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
