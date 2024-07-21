#ifndef UE4SS_SDK_BP_PalCryComponent_HPP
#define UE4SS_SDK_BP_PalCryComponent_HPP

class UBP_PalCryComponent_C : public UPalCryComponentBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x00A0 (size: 0x8)
    float ElapsedTimeFromLastIdleCry;                                                 // 0x00A8 (size: 0x4)
    class APalCharacter* CryingCharacter;                                             // 0x00B0 (size: 0x8)
    TMap<TSubclassOf<UPalActionBase>, TEnumAsByte<E_PalEmo::Type>> ActionEmoMap;      // 0x00B8 (size: 0x50)
    TMap<TSubclassOf<UPalAIActionBase>, TEnumAsByte<E_PalEmo::Type>> AIActionEmoMap;  // 0x0108 (size: 0x50)
    double CoolTImeIdleCry;                                                           // 0x0158 (size: 0x8)
    bool IsCryingOnAIAction;                                                          // 0x0160 (size: 0x1)
    TSubclassOf<class UPalAIActionBase> CryingAIActionClass;                          // 0x0168 (size: 0x8)
    TSubclassOf<class UPalAIActionBase> CurrentAIActionClass;                         // 0x0170 (size: 0x8)
    class UPalIndividualCharacterParameter* IndividualParameter;                      // 0x0178 (size: 0x8)
    bool HasHungry;                                                                   // 0x0180 (size: 0x1)
    bool IsDebug;                                                                     // 0x0181 (size: 0x1)
    double GeneralCoolTime;                                                           // 0x0188 (size: 0x8)
    FName LastCryEmoState;                                                            // 0x0190 (size: 0x8)
    double DeltaTimeFromLastCry;                                                      // 0x0198 (size: 0x8)
    EPalTribeID CryPalID;                                                             // 0x01A0 (size: 0x1)
    bool DisableCrying;                                                               // 0x01A1 (size: 0x1)

    void CheckWorkerEvent();
    void OnSpawnPal(bool bIsActive);
    void CheckHungerType(EPalStatusHungerType Current, EPalStatusHungerType Last);
    void CheckAIAction();
    void CheckAction(const class UPalActionBase* action);
    FName GetPalID();
    void ProcessIdleCry(double DeltaTime);
    void PlayCry(FName EmoState);
    void Initialize();
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void OnPlayCryWithAction(TEnumAsByte<E_PalEmo::Type> PalEmo);
    void ExecuteUbergraph_BP_PalCryComponent(int32 EntryPoint);
}; // Size: 0x1A2

#endif
