#ifndef _EFX_TCHASEMTXT_H
#define _EFX_TCHASEMTXT_H

/*
    __vt__Q23efx10TChaseMtxT:
    .4byte 0
    .4byte 0
    .4byte create__Q23efx5TSyncFPQ23efx3Arg
    .4byte forceKill__Q23efx5TSyncFv
    .4byte fade__Q23efx5TSyncFv
    .4byte 0
    .4byte 0
    .4byte "@4@__dt__Q23efx10TChaseMtxTFv"
    .4byte "@4@execute__Q23efx5TSyncFP14JPABaseEmitter"
    .4byte "@4@executeAfter__Q23efx5TSyncFP14JPABaseEmitter"
    .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
    .4byte execute__Q23efx5TSyncFP14JPABaseEmitter
    .4byte executeAfter__Q23efx5TSyncFP14JPABaseEmitter
    .4byte doExecuteEmitterOperation__Q23efx10TChaseMtxTFP14JPABaseEmitter
    .4byte doExecuteAfter__Q23efx5TSyncFP14JPABaseEmitter
    .4byte startDemoDrawOff__Q23efx5TSyncFv
    .4byte endDemoDrawOn__Q23efx5TSyncFv
    .4byte __dt__Q23efx10TChaseMtxTFv
*/

namespace efx {
struct TSync {
	virtual void create(Arg*);                               // _08
	virtual void forceKill();                                // _0C
	virtual void fade();                                     // _10
	virtual void _14() = 0;                                  // _14
	virtual void _18() = 0;                                  // _18
	virtual void _1C() = 0;                                  // _1C
	virtual void _20() = 0;                                  // _20
	virtual void _24() = 0;                                  // _24
	virtual void _28() = 0;                                  // _28
	virtual void _2C() = 0;                                  // _2C
	virtual void execute(JPABaseEmitter*);                   // _30 (weak)
	virtual void executeAfter(JPABaseEmitter*);              // _34 (weak)
	virtual void doExecuteEmitterOperation(JPABaseEmitter*); // _38
	virtual void doExecuteAfter(JPABaseEmitter*);            // _3C (weak)
	virtual void startDemoDrawOff();                         // _40 (weak)
	virtual void endDemoDrawOn();                            // _44 (weak)
};
} // namespace efx

struct JPAEmitterCallBack {
	virtual void _08() = 0;                  // _08
	virtual void _0C() = 0;                  // _0C
	virtual void _10() = 0;                  // _10
	virtual void _14() = 0;                  // _14
	virtual void _18() = 0;                  // _18
	virtual void _1C() = 0;                  // _1C
	virtual void _20() = 0;                  // _20
	virtual void _24() = 0;                  // _24
	virtual void draw(JPABaseEmitter*);      // _28 (weak)
	virtual void drawAfter(JPABaseEmitter*); // _2C (weak)
};

namespace efx {
struct TChaseMtxT : public TSync, public JPAEmitterCallBack {
	virtual void _14() = 0;                                  // _14
	virtual void _18() = 0;                                  // _18
	virtual void doExecuteEmitterOperation(JPABaseEmitter*); // _38
	virtual ~TChaseMtxT();                                   // _48 (weak)

	TChaseMtxT();
};
} // namespace efx

#endif