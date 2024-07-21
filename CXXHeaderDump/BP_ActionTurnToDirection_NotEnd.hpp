#ifndef UE4SS_SDK_BP_ActionTurnToDirection_NotEnd_HPP
#define UE4SS_SDK_BP_ActionTurnToDirection_NotEnd_HPP

class UBP_ActionTurnToDirection_NotEnd_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double SpeedRate;                                                                 // 0x0148 (size: 0x8)
    double DeleteTimer;                                                               // 0x0150 (size: 0x8)

    void TickAction(float DeltaTime);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_ActionTurnToDirection_NotEnd(int32 EntryPoint);
}; // Size: 0x158

#endif
