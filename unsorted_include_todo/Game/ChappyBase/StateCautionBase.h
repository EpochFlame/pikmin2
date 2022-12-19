#ifndef _GAME_CHAPPYBASE_STATECAUTIONBASE_H
#define _GAME_CHAPPYBASE_STATECAUTIONBASE_H

/*
    __vt__Q34Game10ChappyBase16StateCautionBase:
    .4byte 0
    .4byte 0
    .4byte init__Q24Game13EnemyFSMStateFPQ24Game9EnemyBasePQ24Game8StateArg
    .4byte exec__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte cleanup__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte resume__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte restart__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte transit__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseiPQ24Game8StateArg
    .4byte doDirectDraw__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseR8Graphics
*/

namespace Game {
struct EnemyFSMState {
	virtual void init(EnemyBase*, StateArg*);         // _08 (weak)
	virtual void exec(EnemyBase*);                    // _0C (weak)
	virtual void cleanup(EnemyBase*);                 // _10 (weak)
	virtual void resume(EnemyBase*);                  // _14 (weak)
	virtual void restart(EnemyBase*);                 // _18 (weak)
	virtual void transit(EnemyBase*, int, StateArg*); // _1C
	virtual void doDirectDraw(EnemyBase*, Graphics&); // _20 (weak)
};
} // namespace Game

namespace Game {
namespace ChappyBase {
struct StateCautionBase : public EnemyFSMState {
};
} // namespace ChappyBase
} // namespace Game

#endif