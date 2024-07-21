#ifndef UE4SS_SDK_BP_OtomoPalHolderComponent_HPP
#define UE4SS_SDK_BP_OtomoPalHolderComponent_HPP

class UBP_OtomoPalHolderComponent_C : public UPalOtomoHolderComponentBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0120 (size: 0x8)
    int32 ActivatedOtomoSlotID;                                                       // 0x0128 (size: 0x4)
    int32 SelectedOtomoSlotID;                                                        // 0x012C (size: 0x4)
    FBP_OtomoPalHolderComponent_COnChangedSelectOtomoIndexEvent OnChangedSelectOtomoIndexEvent; // 0x0130 (size: 0x10)
    void OnChangedSelectOtomoIndexEvent();
    FBP_OtomoPalHolderComponent_COnActivateOtomo OnActivateOtomo;                     // 0x0140 (size: 0x10)
    void OnActivateOtomo();
    FBP_OtomoPalHolderComponent_COnUsedActiveSkill OnUsedActiveSkill;                 // 0x0150 (size: 0x10)
    void OnUsedActiveSkill();
    FBP_OtomoPalHolderComponent_COnInactiveOtomoEvent OnInactiveOtomoEvent;           // 0x0160 (size: 0x10)
    void OnInactiveOtomoEvent();
    class UPalIndividualCharacterHandle* ActivatedHandle;                             // 0x0170 (size: 0x8)
    TSubclassOf<class AAIController> AiClass;                                         // 0x0178 (size: 0x8)
    TArray<class APalCharacter*> ReservePalLocationList;                              // 0x0180 (size: 0x10)
    bool OtomoDespawnable;                                                            // 0x0190 (size: 0x1)

    void InactivateAllOtomo();
    void ActivatePalByHandle(class UPalIndividualCharacterHandle* Handle, FTransform& Transform, FVector Transform_Location, FRotator Transform_Rotation, FVector Transform_Scale, bool KeepActigvateOtomoId);
    void SetOtomoInvokerDisable(class AActor* Otomo, bool isDisable);
    void Update Reserve Pal Location(double DeltaTime);
    void IncrementActiveOtomoCount(class UPalPlayerRecordData* PlayerRecordData, FName CharacterID);
    void GetNextValidSlotIndex();
    bool IsValidCurrentSelectPalActor();
    class APalCharacter* TryGetCurrentSelectPalActor();
    void SetTrainer(class APalCharacter* Character);
    void RemovePalFromParty(class UPalIndividualCharacterHandle* RemoveHandle);
    void GetOwnerCharacter(class APalCharacter*& Character);
    void FindNearstEnemy(FVector Location, class AActor*& Actor);
    void ActivateCurrentOtomoFromBall(FTransform BallTransform, class AActor* BallHitActor);
    bool ActivateCurrentOtomoNearThePlayer();
    bool ActivateCurrentOtomo(FTransform SpawnTransform);
    int32 GetSpawnedOtomoID();
    void TryFixAssignNearestWorkSelectedOtomo(const class AActor* HitActor);
    void SetSelectOtomoID_Internal(int32 Index);
    void DecrementSelectOtomoID_Internal();
    void IncrementSelectOtomoID_Internal();
    void InactiveActor(class APalCharacter* Actor, bool StayVisible, bool& IsSuccess);
    void InitializeSlot();
    bool IsActivatedSelectOtomo();
    int32 GetMaxOtomoNum();
    int32 GetPreviousOtomoSlotID();
    int32 GetNextOtomoSlotID();
    int32 GetSelectedOtomoID();
    bool IsRidingBySelectSlotID();
    bool IsRidingBySpawnSlotID();
    void CallCancelCommand();
    void CoopCallCommand();
    void Dummy Despawn Callback(FPalInstanceID ID);
    void Try Get Current Active Pal Actor(class APalCharacter*& Otomo);
    void ActiveAndAttackCurrentPal(class AActor* Target);
    void Update Otomo Slot in Local(int32 SlotIndex, class UPalIndividualCharacterHandle* LastHandle);
    void Update Otomo Slot In Server(int32 SlotIndex, class UPalIndividualCharacterHandle* LastHandle);
    void Inactivate Otomo By Handle(class UPalIndividualCharacterHandle* IndividualHandle, bool IsDelayAddReserver, bool& IsSuccess);
    void Inactivate Otomo(bool& IsSuccess);
    void ActivateOtomo(int32 SlotID, FTransform StartTransform, bool& IsSuccess);
    void IsRidingByOtomoSlotID(int32 SlotID, bool& IsRiding);
    void Add Otomo Down Log(FPalDeadInfo Actor);
    void FindSlotByIndividualID(FPalInstanceID ID, int32& SlotID);
    void Spawn Character Callback(FPalInstanceID ID);
    void SpawnOtomo(int32 SlotID);
    void ActivateCurrentOtomoFromBall_ToServer(FTransform BallTransform, class AActor* HitActor);
    void SetActivateOtomoID_ToALL(int32 ID);
    void CallOnActivateOtomo_ToALL();
    void CallOnInactivateOtomo_ToALL();
    void SetLocationOtomoForActive_ToAll(class AActor* Otomo, FTransform TF);
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void UpdateSlot(int32 SlotIndex, class UPalIndividualCharacterHandle* LastHandle);
    void Otomo_DeathEvent(FPalDeadInfo DeadInfo);
    void InactivateCurrentOtomo();
    void Setup();
    void Setup_ToServer();
    void UpdateSlotInServer(int32 SlotIndex, class UPalIndividualCharacterHandle* LastHandle);
    void SpawnOtomoByLoad(int32 SlotIndex);
    void ReceiveTick(float DeltaSeconds);
    void DelayAddOtomoForReserverList(class APalCharacter* Otomo, bool IsDelay);
    void OnOtomoDeath_ToAll(FPalDeadInfo DeadInfo);
    void ExecuteUbergraph_BP_OtomoPalHolderComponent(int32 EntryPoint);
    void OnInactiveOtomoEvent__DelegateSignature();
    void OnUsedActiveSkill__DelegateSignature();
    void OnActivateOtomo__DelegateSignature();
    void OnChangedSelectOtomoIndexEvent__DelegateSignature();
}; // Size: 0x191

#endif
