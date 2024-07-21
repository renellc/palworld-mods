#ifndef UE4SS_SDK_PL_Title_HPP
#define UE4SS_SDK_PL_Title_HPP

class APL_Title_C : public ALevelScriptActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0298 (size: 0x8)

    void ReceiveBeginPlay();
    void ExecuteUbergraph_PL_Title(int32 EntryPoint);
}; // Size: 0x2A0

#endif
