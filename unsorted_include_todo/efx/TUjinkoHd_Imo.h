#ifndef _EFX_TUJINKOHD_IMO_H
#define _EFX_TUJINKOHD_IMO_H

/*
    __vt__Q23efx13TUjinkoHd_Imo:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx13TUjinkoHd_ImoFPQ23efx3Arg
    .4byte forceKill__Q23efx8TSimple2Fv
    .4byte fade__Q23efx8TSimple2Fv
*/

namespace efx {
struct TSimple2 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

namespace efx {
struct TUjinkoHd_Imo : public TSimple2 {
	virtual void create(Arg*); // _00
	virtual void forceKill();  // _04
	virtual void fade();       // _08

	// _00 VTBL
};
} // namespace efx

#endif
