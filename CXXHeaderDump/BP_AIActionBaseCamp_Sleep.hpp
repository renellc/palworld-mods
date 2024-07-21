#ifndef UE4SS_SDK_BP_AIActionBaseCamp_Sleep_HPP
#define UE4SS_SDK_BP_AIActionBaseCamp_Sleep_HPP

class UBP_AIActionBaseCamp_Sleep_C : public UPalAIActionBaseCampSleep
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x01B0 (size: 0x8)

    void ActionStart(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ExecuteUbergraph_BP_AIActionBaseCamp_Sleep(int32 EntryPoint);
}; // Size: 0x1B8

#endif
