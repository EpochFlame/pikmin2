#include "types.h"
#include "Dolphin/os.h"
#include "Game/GameSystem.h"
#include "Game/TimeMgr.h"
#include "Game/MoviePlayer.h"
#include "JSystem/JUT/JUTGamePad.h"

namespace Game {

struct Navi {
	void procActionButton();
};

struct NaviWalkState {
	void execAI(Navi*);
};

void autopluck(NaviWalkState* walkstate, Navi* captain)
// performs Pikmin 3-style autopluck of pikmin seeds
{
	captain->procActionButton();
	walkstate->execAI(captain);
}
}; // namespace Game

namespace mod {

// example do-nothing function
void moddingStuff() { }

}; // namespace mod
