#ifndef UE4SS_SDK_BP_Action_AliveRagdoll_HPP
#define UE4SS_SDK_BP_Action_AliveRagdoll_HPP

class UBP_Action_AliveRagdoll_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    bool IsRagdoll;                                                                   // 0x0148 (size: 0x1)
    FVector preLocation;                                                              // 0x0150 (size: 0x18)
    FTransform MeshTF;                                                                // 0x0170 (size: 0x60)
    bool EndAble;                                                                     // 0x01D0 (size: 0x1)
    FName InBoneName;                                                                 // 0x01D4 (size: 0x8)
    FName flagName;                                                                   // 0x01DC (size: 0x8)
    FName DefaultCollisionProfile;                                                    // 0x01E4 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x01F0 (size: 0x8)
    double Scale;                                                                     // 0x01F8 (size: 0x8)
    bool AomukeOrLeft;                                                                // 0x0200 (size: 0x1)
    double StartHeight;                                                               // 0x0208 (size: 0x8)

    void SetDefaultMeshTF();
    void ResetActorTransform(bool SafeHeight);
    void DisableRagdoll();
    void BlowCharacter();
    void OnLoaded_1E91249448FAC6F71D7339ACA5AC1552(class UObject* Loaded);
    void OnBeginAction();
    void TickAction(float DeltaTime);
    void OnEndAction();
    void SpawnStunEffect(TSoftObjectPtr<UNiagaraSystem> Path);
    void ExecuteUbergraph_BP_Action_AliveRagdoll(int32 EntryPoint);
}; // Size: 0x210

#endif
