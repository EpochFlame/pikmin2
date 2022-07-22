#include "Game/Piki.h"
#include "types.h"
namespace Game {
// make blue pikmin stay leaves
void leafBluePikmin(Piki& pikmin)
{
	if (pikmin.m_pikminType == Blue && pikmin.m_pikminGrowth > 0) {
		pikmin.m_pikminGrowth = Leaf;
	}
}
} // namespace Game
