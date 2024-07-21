#ifndef UE4SS_SDK_BP_AIAction_NPC_Talking_HPP
#define UE4SS_SDK_BP_AIAction_NPC_Talking_HPP

class UBP_AIAction_NPC_Talking_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    class AActor* TalkTarget;                                                         // 0x0138 (size: 0x8)
    bool TurnEnd;                                                                     // 0x0140 (size: 0x1)
    class AActor* SelfActor;                                                          // 0x0148 (size: 0x8)
    double Timer;                                                                     // 0x0150 (size: 0x8)
    bool IsTalking;                                                                   // 0x0158 (size: 0x1)
    TArray<class AActor*> TalkingPlayers;                                             // 0x0160 (size: 0x10)

    void GetIsTalking(bool& IsTalking);
    void UpdateTalkTarget();
    void RemoveTalkActor(class AActor* TalkActor);
    void CheckTalkPlayers();
    void AddTalkActor(class AActor* TalkActor);
    void OnTalkFinished();
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionPause(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_NPC_Talking(int32 EntryPoint);
}; // Size: 0x170

#endif
