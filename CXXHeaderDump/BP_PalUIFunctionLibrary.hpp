#ifndef UE4SS_SDK_BP_PalUIFunctionLibrary_HPP
#define UE4SS_SDK_BP_PalUIFunctionLibrary_HPP

class UBP_PalUIFunctionLibrary_C : public UBlueprintFunctionLibrary
{

    void CanUseItemInInventory(FName StaticItemId, class UObject* __WorldContext, bool& CanUse);
    void GetWorkDetailName(class UPalIndividualCharacterHandle* Handle, bool NotBattle, class UObject* __WorldContext, FText& OutText);
    void IsDisplayWorkSuitability_ForUI(EPalWorkSuitability Suitability, class UObject* __WorldContext, bool& ShouldDisplay);
    void GetTalentValueTextMaterial(int32 TalentValue, class UObject* __WorldContext, class UMaterialInstance*& FontMaterial);
    void SetupTalentText(class UBP_PalTextBlock_C* TalentHP_ValueText, class UBP_PalTextBlock_C* TalentATK_ValueText, class UBP_PalTextBlock_C* TalentDEF_ValueText, int32 TalentHP, int32 TalentATK, int32 TalentDEF, class UObject* __WorldContext);
    void ChangeTextFontMaterialInstance(class UPalTextBlockBase* targetTextBlock, class UMaterialInstance* NewMaterial, class UObject* __WorldContext);
    void GetPartnerSkillIcon(FName PalName, class UObject* __WorldContext, TSoftObjectPtr<UTexture2D>& SoftIconTexture, bool& IsSquare);
    void SetupWorkSuitabilityWidgetToUniformGrid(class UUniformGridPanel* UniformGridPanel, int32 RowNum, int32 ColumnNum, TMap<EPalWorkSuitability, int32> SuitabilityRankMap, class UObject* __WorldContext);
    void GetTechnologyIcon(FName technologyName, class UObject* __WorldContext, TSoftObjectPtr<UTexture2D>& SoftIconTexture);
    void GetPalGenderText(EPalGenderType GenderType, class UObject* __WorldContext, FText& Text);
    void WrapSizeBox(class UWidget* ChildWidget, double OverrideWidth, double OverrideHeight, class UObject* SizeBoxOuter, class UObject* __WorldContext, class USizeBox*& CreatedSizeBox);
    void WorldLocationToWidgetOffset(FVector2D landscapeMinXY, FVector2D landscapeMaxXY, FVector WorldLocation, class UObject* __WorldContext, FVector2D& Offset);
    void Project Icon Position to World Postion(FVector2D MinLandscapePositionXY, FVector2D MaxLandscapePositionXY, class UWidget* TargetWigdet, class UCanvasPanel* TargetCanvas, double Scale, class UObject* __WorldContext, FVector& WorldPosition);
    void UpdateWorldMapIconPosition(FVector2D MinLandscapePositionXY, FVector2D MaxLandscapePositionXY, class UCanvasPanel* TargetCanvas, FVector WorldLocation, class UWidget* TargetWidget, class UObject* __WorldContext);
    void ProjectIconToWorldMap(FVector2D MinLandscapePositionXY, FVector2D MaxLandscapePositionXY, class UCanvasPanel* TargetCanvas, FVector WorldLocation, class UWidget* AddWidget, class UObject* __WorldContext);
    void GetLocalizedTextFromHandle(FDataTableRowHandle rowHandle, EPalLocalizeTextCategory textVategory, class UObject* __WorldContext, FText& Text);
    void BuildPassiveSkillDescText(FName passiveName, class UObject* __WorldContext, FText& Text);
    void SnapWidgetPosition(class UWidget* TargetWidget, class UWidget* RelativeWidget, FVector2D AnchorPosition, bool isFitViewport, FVector2D FitViewportPadding, class UWidget* OffsetRootWidget, class UObject* __WorldContext);
    void SetupGenusCategoryWidget(class UWBP_PalGenusCategoryIcon_C* iconWidget, class UPalTextBlockBase* TextBlock, FName CharacterID, class UObject* __WorldContext);
    void SetStatusValueToText(class UBP_PalTextBlock_C* meleeText, class UBP_PalTextBlock_C* rangeText, class UBP_PalTextBlock_C* defenseText, class UBP_PalTextBlock_C* supportText, class UBP_PalTextBlock_C* speedText, class UPalIndividualCharacterParameter* individualParam, bool isBuffedValue, class UObject* __WorldContext);
    void SetWeaponSubParameterToWidgets(FPalWeaponSubParameterData subParameter, class UBP_PalTextBlock_C* DPSTextBlock, class UProgressBar* RangeGauge, class UProgressBar* StabilityGauge, class UProgressBar* AccuracyGauge, class UObject* __WorldContext);
    void ChangeTextFontMaterial(class UPalTextBlockBase* targetTextBlock, class UMaterial* NewMaterial, class UObject* __WorldContext);
    void SetMapObjectInfo(FName MapObjectId, class UPalTextBlockBase* nameTextBlock, class UPalTextBlockBase* descTextBlock, class UImage* iconImage, class UObject* __WorldContext);
    void SetItemInfo(FName ItemId, class UPalTextBlockBase* nameTextBlock, class UPalTextBlockBase* descTextBlock, class UImage* iconImage, class UObject* __WorldContext);
    void SetupPalWazaWidget(TArray<class UWBP_MainMenu_Pal_Skill_Active_C*>& wazaWidget, TArray<EPalWazaID>& WazaID, bool ShowEmptySlot, class UObject* __WorldContext);
    void Setup Pal Characteristic Widget(TArray<class UWBP_MainMenu_Pal_Skill_Passive_C*>& characteristicWidget, TArray<FName>& passiveList, class UObject* __WorldContext);
    void SetupPalConditionWidget(TArray<class UWBP_MainMenu_Pal_State_C*>& conditionWidget, TArray<EPalUIConditionType>& Conditions, class UObject* __WorldContext);
    void SetSanityToTextBox(class UPalTextBlockBase* targetText, int32 nowSanity, int32 maxSanity, class UMaterial* normalMaterial, class UMaterial* middleSanityMaterial, class UMaterial* lowSanityMaterial, class UObject* __WorldContext);
}; // Size: 0x28

#endif
