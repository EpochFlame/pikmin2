#ifndef _OG_SCREEN_DISPMEMBERBASE_H
#define _OG_SCREEN_DISPMEMBERBASE_H

/*
    __vt__Q32og6Screen14DispMemberBase:
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte 0
    .4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv
*/

namespace og {
namespace Screen {
	struct DispMemberBase {
		virtual void _00() = 0;           // _00
		virtual void _04() = 0;           // _04
		virtual void _08() = 0;           // _08
		virtual void doSetSubMemberAll(); // _0C

		// _00 VTBL
	};
} // namespace Screen
} // namespace og

#endif
