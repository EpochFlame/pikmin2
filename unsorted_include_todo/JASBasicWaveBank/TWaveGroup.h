#ifndef _JASBASICWAVEBANK_TWAVEGROUP_H
#define _JASBASICWAVEBANK_TWAVEGROUP_H

/*
    __vt__Q216JASBasicWaveBank10TWaveGroup:
    .4byte 0
    .4byte 0
    .4byte onDispose__10JASWaveArcFv
    .4byte onLoadDone__Q216JASBasicWaveBank10TWaveGroupFv
    .4byte onEraseDone__Q216JASBasicWaveBank10TWaveGroupFv
*/

struct JASWaveArc {
	virtual void onDispose(); // _00

	// _00 VTBL
};

namespace JASBasicWaveBank {
struct TWaveGroup : public JASWaveArc {
	virtual void onDispose();   // _00
	virtual void onLoadDone();  // _04
	virtual void onEraseDone(); // _08

	// _00 VTBL
};
} // namespace JASBasicWaveBank

#endif
