#include "types.h"

struct VsOtakaraName {
	static const char* cCoin;
	static const char* cBedamaBlue;
	static const char* cBedamaRed;
	static const char* cBedamaYellow;
	static float cBedamaYellowDepth;
};

const char* VsOtakaraName::cCoin         = "nft1";
const char* VsOtakaraName::cBedamaBlue   = "nft2";
const char* VsOtakaraName::cBedamaRed    = "nft3";
const char* VsOtakaraName::cBedamaYellow = "loozy";
float VsOtakaraName::cBedamaYellowDepth  = 12.0f;
