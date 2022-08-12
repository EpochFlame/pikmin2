#include "types.h"
#include "Dolphin/os.h"
#include "Game/GameSystem.h"
#include "Game/CameraMgr.h"
#include "Game/CollEvent.h"
#include "Game/rumble.h"
#include "Game/EnemyBase.h"
#include "Game/TimeMgr.h"
#include "Game/MoviePlayer.h"
#include "Game/Interaction.h"
#include "Game/enemyInfo.h"
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
	if (frog->getEnemyTypeID() == EnemyTypeID::EnemyID_MaroFrog)
		return;

	Vector3f fxPos;
	frog->setEmotionCaution();
	frog->getCommonEffectPos(fxPos);
	fxPos.y -= 85.0f; // effect offset to ground the explosion

	efx::TSimple1 simpleFx(12, nullptr);
	efx::Arg arg(fxPos);
	simpleFx.create(&arg);

	PSSystem::spSysIF->playSystemSe(PSSE_PK_SE_BOMB, 0);

	cameraMgr->startVibration(12, fxPos, 2);
	rumbleMgr->startRumble(15, fxPos, 2);

	Creature* collCreature = event.m_collidingCreature;

	InteractBomb bomb(frog);
	bomb.m_damage = 10000.0f;

	Vector3f curPos   = frog->getPosition();
	Vector3f otherPos = collCreature->getPosition();
	Vector3f direction(otherPos.x - curPos.x, 0, otherPos.z - curPos.z);

	direction.normalise();
	bomb.m_velocity = Vector3f(direction.x * 50, 0, direction.z * 50);
	collCreature->stimulate(bomb);

	// Water can't save the Pikmin
	if (collCreature->isPiki() && collCreature->inWater()) {
		collCreature->kill(nullptr);
	}
}

void doFrogBombParticle(Game::EnemyBase* frog)
{
	if (frog->getEnemyTypeID() == EnemyTypeID::EnemyID_MaroFrog)
		return;

	Vector3f fxPos;
	frog->getCommonEffectPos(fxPos);

	efx::TSimple1 simpleFx(12, nullptr);
	efx::Arg arg(fxPos);
	simpleFx.create(&arg);

	PSSystem::spSysIF->playSystemSe(PSSE_PK_SE_BOMB, 0);
}
}; // namespace Game

namespace mod {
bool isExitLocked;

// adjust treasure culling radius to 50.0f if radius was zero
float adjustBoundingRadius(float radius)
{
	if (radius == 0.0f)
		return 50.0f;
	else
		return radius;
}

}; // namespace mod
