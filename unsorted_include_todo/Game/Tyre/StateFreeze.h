#ifndef _GAME_TYRE_STATEFREEZE_H
#define _GAME_TYRE_STATEFREEZE_H

/*
    __vt__Q34Game4Tyre11StateFreeze:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game4Tyre11StateFreezeFPQ24Game9EnemyBasePQ24Game8StateArg
    .4byte exec__Q34Game4Tyre11StateFreezeFPQ24Game9EnemyBase
    .4byte cleanup__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte resume__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte restart__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
    .4byte transit__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseiPQ24Game8StateArg
    .4byte doDirectDraw__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseR8Graphics
*/

namespace Game {
struct EnemyFSMState {
	virtual void init(EnemyBase*, StateArg*);         // _08
	virtual void exec(EnemyBase*);                    // _0C
	virtual void cleanup(EnemyBase*);                 // _10 (weak)
	virtual void resume(EnemyBase*);                  // _14 (weak)
	virtual void restart(EnemyBase*);                 // _18 (weak)
	virtual void transit(EnemyBase*, int, StateArg*); // _1C
	virtual void doDirectDraw(EnemyBase*, Graphics&); // _20 (weak)
};
} // namespace Game

namespace Game {
namespace Tyre {
struct StateFreeze : public EnemyFSMState {
	virtual void init(EnemyBase*, StateArg*); // _08
	virtual void exec(EnemyBase*);            // _0C

	StateFreeze(int);
};
} // namespace Tyre
} // namespace Game

#endif