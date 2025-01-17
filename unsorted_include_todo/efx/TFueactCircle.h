#ifndef _EFX_TFUEACTCIRCLE_H
#define _EFX_TFUEACTCIRCLE_H

/*
        __vt__Q23efx13TFueactCircle:
        .4byte 0
        .4byte 0
        .4byte create__Q23efx13TFueactCircleFPQ23efx3Arg
        .4byte forceKill__Q23efx13TFueactCircleFv
        .4byte fade__Q23efx13TFueactCircleFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q23efx13TFueactCircleFv"
        .4byte "@4@execute__Q23efx13TFueactCircleFP14JPABaseEmitter"
        .4byte "@4@executeAfter__Q23efx13TFueactCircleFP14JPABaseEmitter"
        .4byte draw__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter
        .4byte 0
        .4byte 0
        .4byte "@8@__dt__Q23efx13TFueactCircleFv"
        .4byte
   "@8@execute__Q23efx13TFueactCircleFP14JPABaseEmitterP15JPABaseParticle"
        .4byte draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle
        .4byte execute__Q23efx13TFueactCircleFP14JPABaseEmitter
        .4byte
   execute__Q23efx13TFueactCircleFP14JPABaseEmitterP15JPABaseParticle .4byte
   executeAfter__Q23efx13TFueactCircleFP14JPABaseEmitter .4byte
   __dt__Q23efx13TFueactCircleFv
*/

struct JPAEmitterCallBack {
    virtual void _00() = 0;                  // _00
    virtual void _04() = 0;                  // _04
    virtual void _08() = 0;                  // _08
    virtual void _0C() = 0;                  // _0C
    virtual void _10() = 0;                  // _10
    virtual void _14() = 0;                  // _14
    virtual void _18() = 0;                  // _18
    virtual void _1C() = 0;                  // _1C
    virtual void draw(JPABaseEmitter*);      // _20
    virtual void drawAfter(JPABaseEmitter*); // _24

    // _00 VTBL
};

struct JPAParticleCallBack {
    virtual void _00() = 0;                               // _00
    virtual void _04() = 0;                               // _04
    virtual void _08() = 0;                               // _08
    virtual void _0C() = 0;                               // _0C
    virtual void _10() = 0;                               // _10
    virtual void _14() = 0;                               // _14
    virtual void _18() = 0;                               // _18
    virtual void _1C() = 0;                               // _1C
    virtual void _20() = 0;                               // _20
    virtual void _24() = 0;                               // _24
    virtual void _28() = 0;                               // _28
    virtual void _2C() = 0;                               // _2C
    virtual void _30() = 0;                               // _30
    virtual void _34() = 0;                               // _34
    virtual void draw(JPABaseEmitter*, JPABaseParticle*); // _38

    // _00 VTBL
};

namespace efx {
struct TFueactCircle : public JPAEmitterCallBack, public JPAParticleCallBack {
    virtual void create(Arg*);                                   // _00
    virtual void forceKill();                                    // _04
    virtual void fade();                                         // _08
    virtual void _0C() = 0;                                      // _0C
    virtual void _10() = 0;                                      // _10
    virtual void @4 @__dt();                                     // _14
    virtual void @4 @execute(JPABaseEmitter*);                   // _18
    virtual void @4 @executeAfter(JPABaseEmitter*);              // _1C
    virtual void draw(JPABaseEmitter*);                          // _20
    virtual void drawAfter(JPABaseEmitter*);                     // _24
    virtual void _28() = 0;                                      // _28
    virtual void _2C() = 0;                                      // _2C
    virtual void @8 @__dt();                                     // _30
    virtual void @8 @execute(JPABaseEmitter*, JPABaseParticle*); // _34
    virtual void draw(JPABaseEmitter*, JPABaseParticle*);        // _38
    virtual void execute(JPABaseEmitter*);                       // _3C
    virtual void execute(JPABaseEmitter*, JPABaseParticle*);     // _40
    virtual void executeAfter(JPABaseEmitter*);                  // _44
    virtual ~TFueactCircle();                                    // _48

    // _00 VTBL
};
} // namespace efx

#endif
