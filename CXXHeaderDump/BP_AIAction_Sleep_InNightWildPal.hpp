#ifndef UE4SS_SDK_BP_AIAction_Sleep_InNightWildPal_HPP
#define UE4SS_SDK_BP_AIAction_Sleep_InNightWildPal_HPP

class UBP_AIAction_Sleep_InNightWildPal_C : public UBP_AIAction_Sleep_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0180 (size: 0x8)

    void OnSquadMemberDeadEvent(FPalDeadInfo DeadInbfo);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_Sleep_InNightWildPal(int32 EntryPoint);
}; // Size: 0x188

#endif
