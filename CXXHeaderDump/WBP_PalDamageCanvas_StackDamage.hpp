#ifndef UE4SS_SDK_WBP_PalDamageCanvas_StackDamage_HPP
#define UE4SS_SDK_WBP_PalDamageCanvas_StackDamage_HPP

class UWBP_PalDamageCanvas_StackDamage_C : public UPalDamageDisplayCanvas
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Default_In;                                               // 0x0410 (size: 0x8)
    class UCanvasPanel* CanvasPanel_0;                                                // 0x0418 (size: 0x8)
    int32 Damage;                                                                     // 0x0420 (size: 0x4)
    FVector Hit Location;                                                             // 0x0428 (size: 0x18)
    TMap<class TSoftObjectPtr<AActor>, class UPalUIDamageTextBase*> DisplayingDamageTextMap; // 0x0440 (size: 0x50)
    double DisplayTime;                                                               // 0x0490 (size: 0x8)

    void CalcTargetLocation(FPalDamageInfo DamageInfo, class AActor* Defender, FVector& Location);
    void CleanUpMap();
    void UpdateDamageText(FPalDamageInfo DamageInfo, class AActor* Defender);
    void IsExistDamageText(class AActor* Defender, bool& IsExist);
    void AddNewDamageText(FPalDamageInfo DamageInfo, class AActor* Defender);
    void OnRequestedCloseWidget(class UPalUIDamageTextBase* selfWidget);
    void CreateDamageWidget(class UPalUIDamageTextBase*& createdWdiget);
    void CalcDamageTextType(FPalDamageInfo DamageInfo, class AActor* Defender, EPalDamageTextType& textType);
    void OnSetup();
    void Destruct();
    void AddDamageTextEvent(const FPalDamageInfo& DamageInfo, class AActor* Defender);
    void ExecuteUbergraph_WBP_PalDamageCanvas_StackDamage(int32 EntryPoint);
}; // Size: 0x498

#endif
