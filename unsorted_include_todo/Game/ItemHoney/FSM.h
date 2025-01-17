#ifndef _GAME_ITEMHONEY_FSM_H
#define _GAME_ITEMHONEY_FSM_H

/*
    __vt__Q34Game9ItemHoney3FSM:
    .4byte 0
    .4byte 0
    .4byte init__Q34Game9ItemHoney3FSMFPQ24Game8CFSMItem
    .4byte
   "start__Q24Game30StateMachine<Q24Game8CFSMItem>FPQ24Game8CFSMItemiPQ24Game8StateArg"
    .4byte "exec__Q24Game30StateMachine<Q24Game8CFSMItem>FPQ24Game8CFSMItem"
    .4byte
   "transit__Q24Game30StateMachine<Q24Game8CFSMItem>FPQ24Game8CFSMItemiPQ24Game8StateArg"
*/

namespace Game {
namespace StateMachine < Game
{
	struct CFSMItem >
	{
		virtual void init(CFSMItem*);                                   // _00
		virtual void StateMachine < start(CFSMItem*, int, StateArg*);   // _04
		virtual void StateMachine < exec(CFSMItem*);                    // _08
		virtual void StateMachine < transit(CFSMItem*, int, StateArg*); // _0C

		// _00 VTBL
	};
} // namespace Game
} // namespace Game

namespace Game {
namespace ItemHoney {
	struct FSM : public CFSMItem > {
		virtual void init(CFSMItem*);                                   // _00
		virtual void StateMachine < start(CFSMItem*, int, StateArg*);   // _04
		virtual void StateMachine < exec(CFSMItem*);                    // _08
		virtual void StateMachine < transit(CFSMItem*, int, StateArg*); // _0C

		// _00 VTBL
	};
} // namespace ItemHoney
} // namespace Game

#endif
