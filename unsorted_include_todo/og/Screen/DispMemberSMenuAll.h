#ifndef _OG_SCREEN_DISPMEMBERSMENUALL_H
#define _OG_SCREEN_DISPMEMBERSMENUALL_H

/*
    __vt__Q32og6Screen18DispMemberSMenuAll:
    .4byte 0
    .4byte 0
    .4byte getSize__Q32og6Screen18DispMemberSMenuAllFv
    .4byte getOwnerID__Q32og6Screen18DispMemberSMenuAllFv
    .4byte getMemberID__Q32og6Screen18DispMemberSMenuAllFv
    .4byte doSetSubMemberAll__Q32og6Screen18DispMemberSMenuAllFv
*/

namespace og {
namespace Screen {
	struct DispMemberSMenuAll {
		virtual void getSize();           // _00
		virtual void getOwnerID();        // _04
		virtual void getMemberID();       // _08
		virtual void doSetSubMemberAll(); // _0C

		// _00 VTBL
	};
} // namespace Screen
} // namespace og

#endif
