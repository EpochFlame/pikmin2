#include "Game/Piki.h"
#include "Game/GameSystem.h"
#include "types.h"
namespace Game {
// make blue pikmin stay leaves, except in 2P-Battle
void leafBluePikmin(Piki& pikmin)
{
	if (gameSystem) {
		if (gameSystem->m_mode == GSM_VERSUS_MODE) {
			return;
		}
	}
	if (pikmin.m_pikminType == Blue && pikmin.m_pikminGrowth > 0) {
		pikmin.m_pikminGrowth = Leaf;
	}
}
} // namespace Game
