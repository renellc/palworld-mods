#ifndef UE4SS_SDK_WBP_PalPlayerInframeRender_HPP
#define UE4SS_SDK_WBP_PalPlayerInframeRender_HPP

class UWBP_PalPlayerInframeRender_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UCircularThrobber* CircularThrobber_11;                                     // 0x0410 (size: 0x8)
    class UImage* Image_Captured;                                                     // 0x0418 (size: 0x8)
    class UTextureRenderTarget2D* RenderTarget;                                       // 0x0420 (size: 0x8)
    bool isCaptureEveryFrame;                                                         // 0x0428 (size: 0x1)
    bool IsBindPlayerEquipment;                                                       // 0x0429 (size: 0x1)
    class ABP_PalPlayerCaptureSet_C* CaptureCamera;                                   // 0x0430 (size: 0x8)
    FTimerHandle DelayUpdateMeshTimerHandle;                                          // 0x0438 (size: 0x8)
    TSubclassOf<class ABP_PalPlayerCaptureSet_C> CaptureSetClass;                     // 0x0440 (size: 0x8)
    double CaptureInterval;                                                           // 0x0448 (size: 0x8)
    FTimerHandle CaptureSceneTimerHandle;                                             // 0x0450 (size: 0x8)
    class UMaterialInstanceDynamic* RenderTargetMaterial;                             // 0x0458 (size: 0x8)

    void OnTimer_CaptureScene();
    void OnUpdateEquipmentSlot(class UPalItemSlot* itemSlot, EPalPlayerEquipItemSlotType slotType);
    void ResetCameraLocation();
    void AddCameraRelativeLocation(FVector AddLocation);
    void ResetRotation();
    void AddRotation(FRotator AddRotator);
    void On Changed Weapon(class APalWeaponBase* Weapon);
    void UnregisterEvent();
    void RegisterEvent();
    void Request Capture by Make Info(FPalPlayerDataCharacterMakeInfo MakeInfo);
    void RequestCaptureMyPlayer();
    void Reset();
    void Initialize(int32 TextureSize);
    void Construct();
    void Destruct();
    void DelayUpdatePlayerMesh(double DelayTime);
    void UpdateMeshEvent();
    void ExecuteUbergraph_WBP_PalPlayerInframeRender(int32 EntryPoint);
}; // Size: 0x460

#endif
