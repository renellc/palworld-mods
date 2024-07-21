#ifndef UE4SS_SDK_BP_ActionSleep_HPP
#define UE4SS_SDK_BP_ActionSleep_HPP

class UBP_ActionSleep_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    class UAnimMontage* tempMontage;                                                  // 0x0148 (size: 0x8)
    bool IsFlyPal;                                                                    // 0x0150 (size: 0x1)
    FTimerHandle TimeHandle;                                                          // 0x0158 (size: 0x8)
    bool EyeCloseAble;                                                                // 0x0160 (size: 0x1)
    class UNiagaraComponent* Effect;                                                  // 0x0168 (size: 0x8)
    bool UseMontageFacial;                                                            // 0x0170 (size: 0x1)
    class UPalFacialComponent* FacialComp;                                            // 0x0178 (size: 0x8)
    bool StartMontageNotifyExist;                                                     // 0x0180 (size: 0x1)
    bool LoopMontageNotifyExist;                                                      // 0x0181 (size: 0x1)
    TSoftObjectPtr<UAkAudioEvent> SmallSleepSound;                                    // 0x0188 (size: 0x30)
    TSoftObjectPtr<UAkAudioEvent> MiddleSleepSound;                                   // 0x01B8 (size: 0x30)
    TSoftObjectPtr<UAkAudioEvent> BigSleepSound;                                      // 0x01E8 (size: 0x30)

    void StartSleepSound(class UAnimMontage* Montage);
    void SetSleepSightFlag(bool Disable);
    void OnLoaded_49BB828F4B31C2356072F4BF56562BE4(class UObject* Loaded);
    void OnNotifyEnd_6BF59DE942FABEC009135FAF74D0892D(FName NotifyName);
    void OnNotifyBegin_6BF59DE942FABEC009135FAF74D0892D(FName NotifyName);
    void OnInterrupted_6BF59DE942FABEC009135FAF74D0892D(FName NotifyName);
    void OnBlendOut_6BF59DE942FABEC009135FAF74D0892D(FName NotifyName);
    void OnCompleted_6BF59DE942FABEC009135FAF74D0892D(FName NotifyName);
    void OnLoaded_5EEF21F14544E3FF5966AEA11A939260(class UObject* Loaded);
    void OnLoaded_25736171428620E543B76A903CB7DDF9(class UObject* Loaded);
    void CustomEvent(class UAnimMontage* Montage);
    void StopSleepSound();
    void OnBeginAction();
    void OnEndAction();
    void EffectPlayEvent();
    void TickAction(float DeltaTime);
    void PlaySleepSound();
    void ExecuteUbergraph_BP_ActionSleep(int32 EntryPoint);
}; // Size: 0x218

#endif
