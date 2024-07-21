#ifndef UE4SS_SDK_BP_ActionSlowWalkBackward_HPP
#define UE4SS_SDK_BP_ActionSlowWalkBackward_HPP

class UBP_ActionSlowWalkBackward_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double PlayRate;                                                                  // 0x0148 (size: 0x8)

    void FindGoalPosition();
    void OnNotifyEnd_990D050E4901A391C8C8F78879A92A4F(FName NotifyName);
    void OnNotifyBegin_990D050E4901A391C8C8F78879A92A4F(FName NotifyName);
    void OnInterrupted_990D050E4901A391C8C8F78879A92A4F(FName NotifyName);
    void OnBlendOut_990D050E4901A391C8C8F78879A92A4F(FName NotifyName);
    void OnCompleted_990D050E4901A391C8C8F78879A92A4F(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void TickAction(float DeltaTime);
    void ExecuteUbergraph_BP_ActionSlowWalkBackward(int32 EntryPoint);
}; // Size: 0x150

#endif
