#ifndef _EFX_TOTACHARGEGAS_H
#define _EFX_TOTACHARGEGAS_H

/*
    __vt__Q23efx13TOtaChargegas:
    .4byte 0
    .4byte 0
    .4byte "create__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>FPQ23efx3Arg"
    .4byte "forceKill__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
    .4byte "fade__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
    .4byte "startDemoDrawOff__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
    .4byte "endDemoDrawOn__Q23efx31TSyncGroup2<Q23efx10TChaseMtxT>Fv"
*/

namespace efx {
namespace TSyncGroup2 < efx
{
	struct TChaseMtxT >
	{
		virtual void TSyncGroup2 < create(Arg*);       // _00
		virtual void TSyncGroup2 < forceKill();        // _04
		virtual void TSyncGroup2 < fade();             // _08
		virtual void TSyncGroup2 < startDemoDrawOff(); // _0C
		virtual void TSyncGroup2 < endDemoDrawOn();    // _10

		// _00 VTBL
	};
} // namespace efx
} // namespace efx

namespace efx {
struct TOtaChargegas : public TChaseMtxT > {
	virtual void TSyncGroup2 < create(Arg*);       // _00
	virtual void TSyncGroup2 < forceKill();        // _04
	virtual void TSyncGroup2 < fade();             // _08
	virtual void TSyncGroup2 < startDemoDrawOff(); // _0C
	virtual void TSyncGroup2 < endDemoDrawOn();    // _10

	// _00 VTBL
};
} // namespace efx

#endif
