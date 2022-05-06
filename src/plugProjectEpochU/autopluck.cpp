#include "types.h"
namespace Game {

struct Navi {
	bool procActionButton();
};

struct NaviWalkState {
	void execAI(Navi*);
};

void autopluck(NaviWalkState* walkstate, Navi* captain)
{
	captain->procActionButton();
	walkstate->execAI(captain);
}
}; // namespace Game
