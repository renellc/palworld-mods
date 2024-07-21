#ifndef UE4SS_SDK_BP_ActionWateringOneshot_HPP
#define UE4SS_SDK_BP_ActionWateringOneshot_HPP

class UBP_ActionWateringOneshot_C : public UBP_ActionSimpleMonoMontage_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0168 (size: 0x8)
    FName WateredNotifyName;                                                          // 0x0170 (size: 0x8)

    void NotifyWatered(FName NotifyName);
    void OnNotifyBegin(FName NotifyName);
    void ExecuteUbergraph_BP_ActionWateringOneshot(int32 EntryPoint);
}; // Size: 0x178

#endif
