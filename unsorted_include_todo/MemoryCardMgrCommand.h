#ifndef _MEMORYCARDMGRCOMMAND_H
#define _MEMORYCARDMGRCOMMAND_H

/*
    __vt__20MemoryCardMgrCommand:
    .4byte 0
    .4byte 0
    .4byte getClassSize__20MemoryCardMgrCommandFv
*/

struct MemoryCardMgrCommand {
	virtual void getClassSize(); // _00

	// _00 VTBL
};

#endif
