#include "types.h"
#include "Dolphin/os.h"
#include "Game/GameSystem.h"
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

void frogDeathSphere(Game::EnemyBase* frog)
{
	if (frog->getCreatureID() == EnemyTypeID::EnemyID_MaroFrog) return;
	
	Vector3f sphere_pos = frog->getPosition();
	OSReport("sphere_pos.x = %f\n", sphere_pos.x);
	OSReport("sphere_pos.y = %f\n", sphere_pos.y);
	OSReport("sphere_pos.z = %f\n", sphere_pos.z);

	// Create a sphere with a radius of 75 at active frog's position
	Sys::Sphere detectionSphere(sphere_pos, 75);
	Game::CellIteratorArg arg(detectionSphere);

	// Create the iterator based on the sphere
	Game::CellIterator iterator(arg);

	// Initialise properly
	iterator.first();

	// Loop until there are no objects left
	while (!iterator.isDone()) {
		// Grab the current object by calling *iterator
		Game::CellObject* obj = *iterator;

		// Explode any Pikis within the sphere.
		if (obj->getObjType() == OBJTYPE_Piki) {
			OSReport("PIKMIN DETECTED\n");
			Game::Piki* piki_obj = (Game::Piki*)obj;
			//Vector3f piki_pos    = piki_obj->getPosition();
			OSReport("PIKMIN EXPLOSION IMMINENT\n");
			InteractBomb interactBomb;
			piki_obj->stimulate(interactBomb);
			OSReport("PIKMIN STIMULATED\n");
			/*
			// Turn the position into a direction (velocity), pushes the Piki away from the sphere
			piki_pos.x -= sphere_pos.x;
			piki_pos.y = 10.0f;
			piki_pos.z -= sphere_pos.z;

			// Exaggerate the velocity
			piki_pos.x *= 25;
			piki_pos.z *= 25;

			piki_obj->setVelocity(piki_pos);
			*/
		}
		OSReport("ITERATOR NEXT INCOMING\n");
		// Iterate to the next object
		iterator.next();
	}
}

}; // namespace Game

namespace mod {

// example do-nothing function
void moddingStuff() { }

}; // namespace mod
