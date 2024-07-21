#ifndef UE4SS_SDK_BP_ActionPairBehaviorBase_HPP
#define UE4SS_SDK_BP_ActionPairBehaviorBase_HPP

class UBP_ActionPairBehaviorBase_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    FVector PlayerGoalPos;                                                            // 0x0148 (size: 0x18)
    FVector PalGoalPos;                                                               // 0x0160 (size: 0x18)
    FRotator PlayerGoalRotate;                                                        // 0x0178 (size: 0x18)
    FRotator PalGoalRotate;                                                           // 0x0190 (size: 0x18)
    double Timer;                                                                     // 0x01A8 (size: 0x8)
    FBP_ActionPairBehaviorBase_CFinishEvent FinishEvent;                              // 0x01B0 (size: 0x10)
    void FinishEvent();
    double MotionTimeSecond;                                                          // 0x01C0 (size: 0x8)
    class ABP_PettingCamera_C* Camera;                                                // 0x01C8 (size: 0x8)
    double Alpha;                                                                     // 0x01D0 (size: 0x8)
    double LerpSpeed;                                                                 // 0x01D8 (size: 0x8)
    bool RemovePalMode;                                                               // 0x01E0 (size: 0x1)
    FVector RemoveGoalPos;                                                            // 0x01E8 (size: 0x18)
    double AlphaRemove;                                                               // 0x0200 (size: 0x8)
    double tempDeltaTime;                                                             // 0x0208 (size: 0x8)
    double tempAnimRate;                                                              // 0x0210 (size: 0x8)
    bool IsJumpCancel;                                                                // 0x0218 (size: 0x1)
    EPalActionType MonsterActionMontageType;                                          // 0x0219 (size: 0x1)
    EPalFacialEyeType FacialType;                                                     // 0x021A (size: 0x1)
    TSoftObjectPtr<UObject> HeadEffectAsset;                                          // 0x0220 (size: 0x30)
    EPalActionType EndActionType;                                                     // 0x0250 (size: 0x1)

    void Is Valid Target(bool& IsValid);
    class UNiagaraComponent* SpawnNiagara(FVector Location, class UObject* Object);
    void OnCompleted(class AActor* Human, class AActor* Monster);
    void RemovePalMoveing();
    void GetHumanAnime(class UAnimMontage*& Montage);
    void StartPettingCamera();
    void OnNotifyEnd_AFFE27B5471DDCA5938711B5A98C1BAC(FName NotifyName);
    void OnNotifyBegin_AFFE27B5471DDCA5938711B5A98C1BAC(FName NotifyName);
    void OnInterrupted_AFFE27B5471DDCA5938711B5A98C1BAC(FName NotifyName);
    void OnBlendOut_AFFE27B5471DDCA5938711B5A98C1BAC(FName NotifyName);
    void OnCompleted_AFFE27B5471DDCA5938711B5A98C1BAC(FName NotifyName);
    void OnNotifyEnd_195B11E24A68AB1C346EBCB5275B82C9(FName NotifyName);
    void OnNotifyBegin_195B11E24A68AB1C346EBCB5275B82C9(FName NotifyName);
    void OnInterrupted_195B11E24A68AB1C346EBCB5275B82C9(FName NotifyName);
    void OnBlendOut_195B11E24A68AB1C346EBCB5275B82C9(FName NotifyName);
    void OnCompleted_195B11E24A68AB1C346EBCB5275B82C9(FName NotifyName);
    void OnLoaded_E1928592499A4EC8EA38C6BCC85A61EE(class UObject* Loaded);
    void OnNotifyEnd_00F343BB4B6F993C5A65D28008648678(FName NotifyName);
    void OnNotifyBegin_00F343BB4B6F993C5A65D28008648678(FName NotifyName);
    void OnInterrupted_00F343BB4B6F993C5A65D28008648678(FName NotifyName);
    void OnBlendOut_00F343BB4B6F993C5A65D28008648678(FName NotifyName);
    void OnCompleted_00F343BB4B6F993C5A65D28008648678(FName NotifyName);
    void OnBeginAction();
    void TickAction(float DeltaTime);
    void OnEndAction();
    void FinishPetting();
    void JumpCancel();
    void ExecuteUbergraph_BP_ActionPairBehaviorBase(int32 EntryPoint);
    void FinishEvent__DelegateSignature();
}; // Size: 0x251

#endif
