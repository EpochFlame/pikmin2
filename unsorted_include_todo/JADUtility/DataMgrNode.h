#ifndef _JADUTILITY_DATAMGRNODE_H
#define _JADUTILITY_DATAMGRNODE_H

/*
        __vt__Q210JADUtility11DataMgrNode:
        .4byte 0
        .4byte 0
        .4byte __dt__Q210JADUtility11DataMgrNodeFv
        .4byte isTempBuffaMode__Q210JADUtility15DataLoadMgrNodeFv
        .4byte init__Q210JADUtility11DataMgrNodeFv
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte 0
        .4byte getPath__Q210JADUtility11DataMgrNodeFv
        .4byte setPath__Q210JADUtility11DataMgrNodeFPc
        .4byte 0
        .4byte 0
        .4byte "@592@28@__dt__Q210JADUtility11DataMgrNodeFv"
        .4byte "@592@28@init__Q210JADUtility11DataMgrNodeFv"
*/

namespace JADUtility {
struct DataLoadMgrNode {
    virtual ~DataLoadMgrNode();     // _00
    virtual void isTempBuffaMode(); // _04

    // _00 VTBL
};
} // namespace JADUtility

namespace JADUtility {
struct DataMgrNode : public DataLoadMgrNode {
    virtual ~DataMgrNode();         // _00
    virtual void isTempBuffaMode(); // _04
    virtual void init();            // _08
    virtual void _0C() = 0;         // _0C
    virtual void _10() = 0;         // _10
    virtual void _14() = 0;         // _14
    virtual void _18() = 0;         // _18
    virtual void getPath();         // _1C
    virtual void setPath(char*);    // _20
    virtual void _24() = 0;         // _24
    virtual void _28() = 0;         // _28
    virtual void @592 @28 @__dt();  // _2C
    virtual void @592 @28 @init();  // _30

    // _00 VTBL
};
} // namespace JADUtility

#endif
