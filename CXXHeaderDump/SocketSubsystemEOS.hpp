#ifndef UE4SS_SDK_SocketSubsystemEOS_HPP
#define UE4SS_SDK_SocketSubsystemEOS_HPP

class UNetConnectionEOS : public UIpConnection
{
}; // Size: 0x33A0

class UNetDriverEOSBase : public UIpNetDriver
{
    bool bIsPassthrough;                                                              // 0x0840 (size: 0x1)
    bool bIsUsingP2PSockets;                                                          // 0x0841 (size: 0x1)

}; // Size: 0x848

#endif
