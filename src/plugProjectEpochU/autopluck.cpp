#include "types.h"
#include "Game/GameSystem.h"
#include "Game/TimeMgr.h"
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

u32 getCurrentDay(Game::GameSystem* game)
{
	return game->m_timeMgr->m_dayCount + 1;
}

}; // namespace Game
