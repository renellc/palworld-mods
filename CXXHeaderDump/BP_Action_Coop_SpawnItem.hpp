#ifndef UE4SS_SDK_BP_Action_Coop_SpawnItem_HPP
#define UE4SS_SDK_BP_Action_Coop_SpawnItem_HPP

class UBP_Action_Coop_SpawnItem_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UAnimInstance* AnimInst;                                                    // 0x0148 (size: 0x8)
    class APalCharacter* ActionCharacter;                                             // 0x0150 (size: 0x8)
    class UAnimMontage* ChargeMontage;                                                // 0x0158 (size: 0x8)
    bool IsFnishByAbortMontage;                                                       // 0x0160 (size: 0x1)
    class UPalFacialComponent* Facial;                                                // 0x0168 (size: 0x8)
    EPalFacialEyeType ChargeFacialEye;                                                // 0x0170 (size: 0x1)
    FTimerHandle ChargeTimer;                                                         // 0x0178 (size: 0x8)
    class UAnimMontage* FunMontage;                                                   // 0x0180 (size: 0x8)
    EPalFacialEyeType FunFacialEye;                                                   // 0x0188 (size: 0x1)

    void EndProc();
    void StopFunMontage();
    void StopChargeMontage();
    void OnNotifyEnd_3059B08B4A825BCA681E639E08A41646(FName NotifyName);
    void OnNotifyBegin_3059B08B4A825BCA681E639E08A41646(FName NotifyName);
    void OnInterrupted_3059B08B4A825BCA681E639E08A41646(FName NotifyName);
    void OnBlendOut_3059B08B4A825BCA681E639E08A41646(FName NotifyName);
    void OnCompleted_3059B08B4A825BCA681E639E08A41646(FName NotifyName);
    void OnNotifyEnd_41D0FB9F4D2B94E1D6E7B084AF2DCD56(FName NotifyName);
    void OnNotifyBegin_41D0FB9F4D2B94E1D6E7B084AF2DCD56(FName NotifyName);
    void OnInterrupted_41D0FB9F4D2B94E1D6E7B084AF2DCD56(FName NotifyName);
    void OnBlendOut_41D0FB9F4D2B94E1D6E7B084AF2DCD56(FName NotifyName);
    void OnCompleted_41D0FB9F4D2B94E1D6E7B084AF2DCD56(FName NotifyName);
    void StartFun();
    void OnEndFun();
    void OnBeginAction();
    void OnEndAction();
    void ExecuteUbergraph_BP_Action_Coop_SpawnItem(int32 EntryPoint);
}; // Size: 0x189

#endif
