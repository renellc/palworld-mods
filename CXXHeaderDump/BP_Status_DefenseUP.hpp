#ifndef UE4SS_SDK_BP_Status_DefenseUP_HPP
#define UE4SS_SDK_BP_Status_DefenseUP_HPP

class UBP_Status_DefenseUP_C : public UPalStatusBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0048 (size: 0x8)

    void OnLoaded_A2F777004366F513ABBD72ACA012C04D(class UObject* Loaded);
    void OnBeginStatus();
    void OnEndStatus();
    void ExecuteUbergraph_BP_Status_DefenseUP(int32 EntryPoint);
}; // Size: 0x50

#endif
