#include "types.h"
#include "Dolphin/os.h"
#include "Game/GameSystem.h"
#include "Game/CameraMgr.h"
#include "Game/CollEvent.h"
#include "Game/rumble.h"
#include "Game/EnemyBase.h"
#include "Game/TimeMgr.h"
#include "Game/MapMgr.h"
#include "Game/MoviePlayer.h"
#include "Game/Interaction.h"
#include "Game/enemyInfo.h"
#include "Game/Cave/Info.h"
#include "JSystem/JUT/JUTGamePad.h"
#include "SoundID.h"
#include "PSSystem/SysIF.h"
#include "efx/TSimple.h"
#include "ObjectTypes.h"

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

void frogDeathSphere(Game::EnemyBase* frog, Game::CollEvent& event)
{
	if (frog->getCreatureID() == EnemyTypeID::EnemyID_MaroFrog)
		return;

	Vector3f fxPos;
	frog->setEmotionCaution();
	frog->getCommonEffectPos(fxPos);
	fxPos.y -= 85.0f; // effect offset to ground the explosion

	efx::TSimple1 simpleFx(12, nullptr);
	efx::Arg arg(fxPos);
	simpleFx.create(&arg);

	cameraMgr->startVibration(12, fxPos, 2);
	rumbleMgr->startRumble(15, fxPos, 2);

	Creature* collCreature = event.m_collidingCreature;

	InteractBomb bomb;
	bomb.m_creature = frog;
	bomb._08        = 10000.0f;

	Vector3f curPos   = frog->getPosition();
	Vector3f otherPos = collCreature->getPosition();
	Vector3f direction(otherPos.x - curPos.x, 0, otherPos.z - curPos.z);

	direction.normalise();
	bomb._0C = Vector3f(direction.x * 50, 0, direction.z * 50);
	collCreature->stimulate(bomb);

	// Water can't save the Pikmin
	if (collCreature->isPiki() && collCreature->inWater()) {
		collCreature->kill(nullptr);
	}
}

bool isGMP()
{
	if (!gameSystem || !mapMgr) {
		return false;
	}

	if (!gameSystem->m_isInCaveMaybe || !gameSystem->m_section) {
		return false;
	}

	// If the cave is t_02 and we're on the last floor
	if (gameSystem->m_section->getCaveID() == 't_02' || gameSystem->m_section->getCurrFloor() + 1 == mapMgr->m_caveInfo->getFloorMax()) {
		return true;
	}
	return false;
}
}; // namespace Game

namespace mod {

// example do-nothing function
void moddingStuff() { }

}; // namespace mod
