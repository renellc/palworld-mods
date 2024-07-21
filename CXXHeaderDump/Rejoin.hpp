#ifndef UE4SS_SDK_Rejoin_HPP
#define UE4SS_SDK_Rejoin_HPP

#include "Rejoin_enums.hpp"

class URejoinCheck : public UObject
{
    ERejoinStatus LastKnownStatus;                                                    // 0x0028 (size: 0x1)
    bool bRejoinAfterCheck;                                                           // 0x0029 (size: 0x1)
    bool bAttemptingRejoin;                                                           // 0x002A (size: 0x1)

}; // Size: 0x188

#endif
