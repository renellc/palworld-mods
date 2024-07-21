#ifndef UE4SS_SDK_BP_ThrowCaptureObjectBase_HPP
#define UE4SS_SDK_BP_ThrowCaptureObjectBase_HPP

class ABP_ThrowCaptureObjectBase_C : public ABP_ThrowObjectBase_C
{
    FBP_ThrowCaptureObjectBase_COnCaptureStarted OnCaptureStarted;                    // 0x0398 (size: 0x10)
    void OnCaptureStarted(class AActor* createdBodyActor, class UPalIndividualCharacterHandle* tagretHandle, bool isBonus);
    int32 CaptureLevel;                                                               // 0x03A8 (size: 0x4)

    void GetBodyClass(TSubclassOf<class ABP_PalCaptureBodyBase_C>& bodyClass);
    void GetCaptureLevel(int32& Level);
    void SetCaptureLevel(int32 Level);
    void OnCaptureStarted__DelegateSignature(class AActor* createdBodyActor, class UPalIndividualCharacterHandle* tagretHandle, bool isBonus);
}; // Size: 0x3AC

#endif
