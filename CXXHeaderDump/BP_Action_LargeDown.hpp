#ifndef UE4SS_SDK_BP_Action_LargeDown_HPP
#define UE4SS_SDK_BP_Action_LargeDown_HPP

class UBP_Action_LargeDown_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double Const_DownTime;                                                            // 0x0148 (size: 0x8)

    void FindMontage(EPalGeneralMontageType MotionType, class UAnimMontage*& Montage);
    void OnNotifyEnd_358D0402488CD580AA8B67999DF53D31(FName NotifyName);
    void OnNotifyBegin_358D0402488CD580AA8B67999DF53D31(FName NotifyName);
    void OnInterrupted_358D0402488CD580AA8B67999DF53D31(FName NotifyName);
    void OnBlendOut_358D0402488CD580AA8B67999DF53D31(FName NotifyName);
    void OnCompleted_358D0402488CD580AA8B67999DF53D31(FName NotifyName);
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_Action_LargeDown(int32 EntryPoint);
}; // Size: 0x150

#endif
