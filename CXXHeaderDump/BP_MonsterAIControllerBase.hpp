#ifndef UE4SS_SDK_BP_MonsterAIControllerBase_HPP
#define UE4SS_SDK_BP_MonsterAIControllerBase_HPP

class ABP_MonsterAIControllerBase_C : public APalAIController
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0528 (size: 0x8)
    class UBP_AIADamageReaction_C* BP_AIADamageReaction;                              // 0x0530 (size: 0x8)
    TSubclassOf<class UPalAIActionBase> DefaultActionClass;                           // 0x0538 (size: 0x8)
    TSubclassOf<class UPalAIActionCompositeBase> DefaultRootCompositeActionClass;     // 0x0540 (size: 0x8)
    bool bPlayDefaultCompositeAction;                                                 // 0x0548 (size: 0x1)
    bool IsSetupEnd;                                                                  // 0x0549 (size: 0x1)
    bool IsAutoPlayDefaultAction;                                                     // 0x054A (size: 0x1)

    void ToLogFontStyleName(EPalMonsterControllerBaseCampLogType LogType, FName& StyleName);
    void ShowBaseCampLog_Internal(FPalMonsterControllerBaseCampLogContent& Content);
    void CreateBaseCampLogMessageText(FPalMonsterControllerBaseCampLogContent& Content, FText& Result);
    void To Log Tone Type(EPalMonsterControllerBaseCampLogType LogType, EPalLogContentToneType& toneType);
    void PlayDefaultAction();
    void ReceivePossess(class APawn* PossessedPawn);
    void ReceiveTick(float DeltaSeconds);
    void カスタムイベント_0(class APalCharacter* InCharacter);
    void SetupBySpawner();
    void ExecuteUbergraph_BP_MonsterAIControllerBase(int32 EntryPoint);
}; // Size: 0x54B

#endif
