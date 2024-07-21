#ifndef UE4SS_SDK_BP_Action_Rolling_HPP
#define UE4SS_SDK_BP_Action_Rolling_HPP

class UBP_Action_Rolling_C : public UBP_ActionStepBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0228 (size: 0x8)
    FVector TempVelocity;                                                             // 0x0230 (size: 0x18)

    void OnBeginAction();
    void EndStep();
    void OnBreakAction();
    void ExecuteUbergraph_BP_Action_Rolling(int32 EntryPoint);
}; // Size: 0x248

#endif
