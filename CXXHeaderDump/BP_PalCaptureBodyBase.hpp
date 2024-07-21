#ifndef UE4SS_SDK_BP_PalCaptureBodyBase_HPP
#define UE4SS_SDK_BP_PalCaptureBodyBase_HPP

class ABP_PalCaptureBodyBase_C : public APalSphereBodyBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0290 (size: 0x8)
    class UBP_PalSoundPlayerComponent_C* SoundPlayer;                                 // 0x0298 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02A0 (size: 0x8)
    FBP_PalCaptureBodyBase_COnSuccessedCapture OnSuccessedCapture;                    // 0x02A8 (size: 0x10)
    void OnSuccessedCapture(class UPalIndividualCharacterHandle* targetHandle);
    FBP_PalCaptureBodyBase_COnFailedCapture OnFailedCapture;                          // 0x02B8 (size: 0x10)
    void OnFailedCapture(class UPalIndividualCharacterHandle* targetHandle, TEnumAsByte<EPalSphereCaptureFailedReason::Type> failedReason);
    class UPalIndividualCharacterHandle* targetHandle;                                // 0x02C8 (size: 0x8)
    int32 CaptureLevel;                                                               // 0x02D0 (size: 0x4)
    FBP_PalCaptureBodyBase_COnPassingCapturePhase OnPassingCapturePhase;              // 0x02D8 (size: 0x10)
    void OnPassingCapturePhase(int32 PhaseCount, class UPalIndividualCharacterHandle* targetHandle);
    FBP_PalCaptureBodyBase_COnShakeBody OnShakeBody;                                  // 0x02E8 (size: 0x10)
    void OnShakeBody(class ABP_PalCaptureBodyBase_C* shakedBody);
    bool isSneakBonus;                                                                // 0x02F8 (size: 0x1)
    bool isIntoBall;                                                                  // 0x02F9 (size: 0x1)
    FBP_PalCaptureBodyBase_COnBouncedBody OnBouncedBody;                              // 0x0300 (size: 0x10)
    void OnBouncedBody(TEnumAsByte<E_PalCaptureSphereBouncedReason::Type> reasonType, class UPalIndividualCharacterHandle* targetHandle);
    bool IsRobberyBall;                                                               // 0x0310 (size: 0x1)
    double NonTargetTimer;                                                            // 0x0318 (size: 0x8)

    void GetOwnerCharacterOrRiderCharacter(class AActor*& Character);
    void SetSneakBonusFlagToALL(bool isSneak);
    void SetTargetHandle(class UPalIndividualCharacterHandle* targetHandle);
    void SetupInServer(class APalCharacter* TargetCharacter);
    void SetupToALL(class APalCharacter* Target);
    void SetCaptureLevelToALL(int32 Level);
    void Get Is Into Ball(bool& intoBall);
    void SetIsIntoBall(bool intoBall);
    class USceneComponent* GetAkOwnerComponent();
    void PlaySound(FPalDataTableRowName_SoundID ID);
    void IsSneakBonusEnabled(bool& Enabled);
    void SetSneakBonusFlag(bool Flag);
    void Setup(class APalCharacter* TargetCharacter);
    void GetTargetActor(class APalCharacter*& TargetActor);
    void GetCaptureLevel(int32& Level);
    void SetCaptureLevel(int32 NewParam);
    void GetTargetHandle(class UPalIndividualCharacterHandle*& targetHandle);
    void ReceiveBeginPlay();
    void ReceiveTick(float DeltaSeconds);
    void SetTargetIDToALL(FPalInstanceID TargetId);
    void SetCaptureLevelInternal(int32 Level);
    void SetSneakBonusFlagInternal(bool isSneak);
    void SetupInternal(class APalCharacter* TargetCharacter);
    void ExecuteUbergraph_BP_PalCaptureBodyBase(int32 EntryPoint);
    void OnBouncedBody__DelegateSignature(TEnumAsByte<E_PalCaptureSphereBouncedReason::Type> reasonType, class UPalIndividualCharacterHandle* targetHandle);
    void OnShakeBody__DelegateSignature(class ABP_PalCaptureBodyBase_C* shakedBody);
    void OnPassingCapturePhase__DelegateSignature(int32 PhaseCount, class UPalIndividualCharacterHandle* targetHandle);
    void OnFailedCapture__DelegateSignature(class UPalIndividualCharacterHandle* targetHandle, TEnumAsByte<EPalSphereCaptureFailedReason::Type> failedReason);
    void OnSuccessedCapture__DelegateSignature(class UPalIndividualCharacterHandle* targetHandle);
}; // Size: 0x320

#endif
