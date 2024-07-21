#ifndef UE4SS_SDK_BP_AIAction_SpawnItemBase_HPP
#define UE4SS_SDK_BP_AIAction_SpawnItemBase_HPP

class UBP_AIAction_SpawnItemBase_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    int32 SpawnCount;                                                                 // 0x0138 (size: 0x4)
    class APalCharacter* ActionCharacter;                                             // 0x0140 (size: 0x8)
    FPalStaticItemIdAndNum SpawnItemInfo;                                             // 0x0148 (size: 0xC)
    FName SpawnSocketName;                                                            // 0x0154 (size: 0x8)
    FVector SpawnLocationOffset;                                                      // 0x0160 (size: 0x18)
    FRotator SpawnItemRotator;                                                        // 0x0178 (size: 0x18)

    void OnActionNotify_Proc(FName Notify);
    void IsActionRunning(bool& IsRunning);
    void SpawnItem();
    void AbortProc();
    bool CanSpawnItem();
    void GetStatusInstance(class UPalStatusCollectItem*& Status Collect Item);
    void SetMoveFlag(bool IsActive);
    void Setup(class UObject* Object);
    void ActionStart(class APawn* ControlledPawn);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void OnAbort();
    void OnActionNotify(const class UPalActionBase* action, FName NotifyName);
    void OnCompleteItemSpawn();
    void PlaySpawnItemAction();
    void ExecuteUbergraph_BP_AIAction_SpawnItemBase(int32 EntryPoint);
}; // Size: 0x190

#endif
