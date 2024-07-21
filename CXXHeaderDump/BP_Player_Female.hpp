#ifndef UE4SS_SDK_BP_Player_Female_HPP
#define UE4SS_SDK_BP_Player_Female_HPP

class ABP_Player_Female_C : public ABP_PlayerBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0C60 (size: 0x8)
    class UPalSkeletalMeshComponent* HairAttachAccessory;                             // 0x0C68 (size: 0x8)
    class UPalBodyPartsCapsuleComponent* PalBodyPartsCapsule;                         // 0x0C70 (size: 0x8)
    class UPalBodyPartsSphereComponent* PalBodyPartsSphere;                           // 0x0C78 (size: 0x8)
    class UPalBodyTemperatureComponent* PalBodyTemperature;                           // 0x0C80 (size: 0x8)
    class UBP_GliderComponent_C* BP_GliderComponent;                                  // 0x0C88 (size: 0x8)
    class UPalInteractableSphereComponentNative* BP_InteractableSphere;               // 0x0C90 (size: 0x8)
    class UPalSkeletalMeshComponent* HairMesh;                                        // 0x0C98 (size: 0x8)
    class UPalSkeletalMeshComponent* HeadMesh;                                        // 0x0CA0 (size: 0x8)
    class UBP_PalClimbingComponent_C* BP_PalClimbingComponent;                        // 0x0CA8 (size: 0x8)
    class UPalFacialComponent* PalFacial;                                             // 0x0CB0 (size: 0x8)
    class UBP_FluidImplementation_C* BP_FluidImplementation;                          // 0x0CB8 (size: 0x8)
    class UBP_PlayerSoundEmitterComponent_C* BP_PlayerSoundEmitterComponent;          // 0x0CC0 (size: 0x8)
    class UNiagaraComponent* SlidingParticle;                                         // 0x0CC8 (size: 0x8)
    bool UsePhysicalBone;                                                             // 0x0CD0 (size: 0x1)
    class UNiagaraSystem* SlidingSmokeNiagara;                                        // 0x0CD8 (size: 0x8)
    class UNiagaraSystem* JumpNiagara;                                                // 0x0CE0 (size: 0x8)
    FName SoundID_Sliding;                                                            // 0x0CE8 (size: 0x8)
    class ABP_Lamp_C* Lamp;                                                           // 0x0CF0 (size: 0x8)
    class UNiagaraSystem* SlidingSmokeNiagara_Snow;                                   // 0x0CF8 (size: 0x8)
    class UNiagaraSystem* JumpNiagara_Snow;                                           // 0x0D00 (size: 0x8)
    class UBP_PalLocalPlayerSystemSound_C* LocalPlayerSound;                          // 0x0D08 (size: 0x8)

    class USkeletalMeshComponent* GetHeadMesh();
    void GetVisual_ExceptMainMesh_SyncAnyway(TArray<class USceneComponent*>& OutComponent);
    class USkeletalMeshComponent* GetOverrideFaceMesh();
    void OnUpdateSliding();
    void OnSlidingEnd();
    void OnSlidingBegin();
    void CreatePoliceSpawner();
    void CreateLamp();
    void OnLoaded_CD204E62480922149D33F2914AD3807A(class UObject* Loaded);
    void OnLoaded_B0A699BF41F9214B27FAD1AD60391AE4(class UObject* Loaded);
    void BndEvt__BP_Palmi_v2_CharacterMovement_K2Node_ComponentBoundEvent_0_OnChangeSliding__DelegateSignature(class UPalCharacterMovementComponent* Component, bool IsInSliding);
    void OnJumped();
    void ReceiveTick(float DeltaSeconds);
    void LoadAsyncAsset();
    void ReceiveEndPlay(TEnumAsByte<EEndPlayReason::Type> EndPlayReason);
    void BndEvt__BP_Player_Female_BP_GliderComponent_K2Node_ComponentBoundEvent_1_OnStartGliding__DelegateSignature();
    void ReceiveBeginPlay();
    void OnInitialized(class APalCharacter* InCharacter);
    void ExecuteUbergraph_BP_Player_Female(int32 EntryPoint);
}; // Size: 0xD10

#endif
