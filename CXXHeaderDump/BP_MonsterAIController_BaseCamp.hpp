#ifndef UE4SS_SDK_BP_MonsterAIController_BaseCamp_HPP
#define UE4SS_SDK_BP_MonsterAIController_BaseCamp_HPP

class ABP_MonsterAIController_BaseCamp_C : public ABP_MonsterAIControllerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0550 (size: 0x8)
    FVector SpawnedPosition;                                                          // 0x0558 (size: 0x18)

    TSubclassOf<class UPalAIControllerWorkerModule> GetWorkerModuleClass();
    class UPalAIActionBase* SetBaseCampActionByClass(TSubclassOf<class UPalAIActionBase> actionClass);
    class UPalAIActionBaseCampSleep* SetBaseCampActionSleep();
    void TerminateBaseCampActionByClass_Internal(TSubclassOf<class UPalAIActionBase> actionClass);
    void SetAction_Internal(class UPalAIActionComponent* AIActionComponent, class UPalAIActionBaseCampBase* NewAction);
    void SetAction_SpawningForWorker();
    void FindFixedAssignableObject(FGuid WorkId, double Range, bool& bFound, TScriptInterface<class IPalBaseCampAssignableObjectInterface>& FoundObject);
    void FailedFixedAssign();
    class UPalAIActionCompositeBase* SetCompositeActionBaseCamp(TSubclassOf<class UPalAIActionCompositeBase> CompositeActionClass);
    void GetBaseCampId(FGuid& Base Camp Id);
    void SetAction_WorkerEvent(class UPalAIActionBase* action, TEnumAsByte<EAIRequestPriority::Type> Priority);
    void SetAction_Sleep();
    void SetAction_SleepActively(FPalAIActionBaseCampSleepActivelyParameter& Parameter);
    void SetAction_RecoverHungry(FPalMonsterControllerBaseCampHungryParameter Parameter, class UPalAIActionBaseCampBase*& action);
    void NotifyOrderCommandToCurrentRootAction(EPalMapBaseCampWorkerOrderType OrderType);
    class UPalAIActionCompositeBase* SetAction_BaseCamp_Worker();
    void SetAction_WithFixAssignRange(FGuid& TargetWorkProgressId, const double Range);
    void SetAction_BaseCamp(TSubclassOf<class UPalAIActionBaseCampBase> AIActionClass, TEnumAsByte<EAIRequestPriority::Type> Priority, class UPalAIActionBaseCampBase*& action);
    void SetAction_DefaultPos();
    void SetAction_Liftup();
    void SetAction_CapturedStorage();
    void SetCapturedStorageAction();
    void SetBaseCampAction();
    void SetBaseCampActionWithFixAssign(const FGuid& TargetWorkProgressId, const float DistanceFixAssignTargetting);
    void NotifyOrderCommand(const EPalMapBaseCampWorkerOrderType OrderType);
    void ReceivePossess(class APawn* PossessedPawn);
    void InterruptReturnBackToBaseCamp();
    void OnDeadDelegate_イベント_0(FPalDeadInfo DeadInfo);
    void InterruptRecoverHungryAction(const FPalMonsterControllerBaseCampHungryParameter Parameter);
    void SetDefaultPositionAction();
    void SetBaseCampActionSleepMedicalBed(const FGuid& TargetBedConcreteModelId);
    void InterruptPlayWorkerEventAction(class UPalAIActionBase* action, const TEnumAsByte<EAIRequestPriority::Type> Priority);
    void SetBaseCampActionLift();
    void ShowBaseCampLog(const FPalMonsterControllerBaseCampLogContent& Content);
    void SetBaseCampActionSpawningForWork();
    void InterruptSleepActivelyAction(const FPalAIActionBaseCampSleepActivelyParameter& Parameter);
    void TerminateBaseCampActionByClass(TSubclassOf<class UPalAIActionBase> actionClass);
    void ExecuteUbergraph_BP_MonsterAIController_BaseCamp(int32 EntryPoint);
}; // Size: 0x570

#endif
