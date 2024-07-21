#ifndef UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_HPP
#define UE4SS_SDK_WBP_InventoryEquipment_ItemInfo_HPP

class UWBP_InventoryEquipment_ItemInfo_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_Use;                                                  // 0x0410 (size: 0x8)
    class UWidgetAnimation* Anm_rarity;                                               // 0x0418 (size: 0x8)
    class UCanvasPanel* Canvas_CommonDetail;                                          // 0x0420 (size: 0x8)
    class UCanvasPanel* Canvas_ItemNum;                                               // 0x0428 (size: 0x8)
    class UCanvasPanel* Canvas_KeyGuide_Use;                                          // 0x0430 (size: 0x8)
    class UCanvasPanel* Canvas_MainParameter;                                         // 0x0438 (size: 0x8)
    class UCanvasPanel* Canvas_SkillInfo;                                             // 0x0440 (size: 0x8)
    class UCanvasPanel* Canvas_SubParameter;                                          // 0x0448 (size: 0x8)
    class UCanvasPanel* Canvas_SubParameter_1;                                        // 0x0450 (size: 0x8)
    class UCanvasPanel* Canvas_TechPoint;                                             // 0x0458 (size: 0x8)
    class UHorizontalBox* Horizontal_KeyGuide_Equip;                                  // 0x0460 (size: 0x8)
    class UHorizontalBox* Horizontal_KeyGuide_LiftHalf;                               // 0x0468 (size: 0x8)
    class UHorizontalBox* Horizontal_KeyGuide_LiftOne;                                // 0x0470 (size: 0x8)
    class UHorizontalBox* Horizontal_KeyGuide_Move;                                   // 0x0478 (size: 0x8)
    class UHorizontalBox* Horizontal_KeyGuide_Use;                                    // 0x0480 (size: 0x8)
    class UHorizontalBox* HorizontalBox_Durability;                                   // 0x0488 (size: 0x8)
    class UHorizontalBox* HorizontalBox_KeyGuide;                                     // 0x0490 (size: 0x8)
    class UImage* IconArrow_WeightReduce;                                             // 0x0498 (size: 0x8)
    class UImage* Image_Icon_TechPoint;                                               // 0x04A0 (size: 0x8)
    class UImage* Image_ItemIcon;                                                     // 0x04A8 (size: 0x8)
    class UImage* Image_ItemIconShadow;                                               // 0x04B0 (size: 0x8)
    class UOverlay* Overlay_Consumable;                                               // 0x04B8 (size: 0x8)
    class UOverlay* Overlay_RarityText;                                               // 0x04C0 (size: 0x8)
    class UBP_PalRichTextBlock_C* RichText_ItemInfo;                                  // 0x04C8 (size: 0x8)
    class UBP_PalRichTextBlock_C* RichText_ItemName;                                  // 0x04D0 (size: 0x8)
    class USizeBox* SizeBox_LiftHalf_RightIcon;                                       // 0x04D8 (size: 0x8)
    class USizeBox* SizeBox_LiftOne_RightIcon;                                        // 0x04E0 (size: 0x8)
    class USpacer* Spacer_KeyGuide_Equip;                                             // 0x04E8 (size: 0x8)
    class USpacer* Spacer_KeyGuide_Move;                                              // 0x04F0 (size: 0x8)
    class USpacer* Spacer_KeyGuide_Use;                                               // 0x04F8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_CTNum;                                             // 0x0500 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Cu;                                                // 0x0508 (size: 0x8)
    class UBP_PalTextBlock_C* Text_DurableNum;                                        // 0x0510 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Equip;                                             // 0x0518 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ItemCategory;                                      // 0x0520 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ItemNumTitle;                                      // 0x0528 (size: 0x8)
    class UBP_PalTextBlock_C* Text_ItemNumValue;                                      // 0x0530 (size: 0x8)
    class UBP_PalTextBlock_C* Text_MainParamTitle;                                    // 0x0538 (size: 0x8)
    class UBP_PalTextBlock_C* Text_MainParamValue;                                    // 0x0540 (size: 0x8)
    class UBP_PalTextBlock_C* Text_NowWeight;                                         // 0x0548 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Ra;                                                // 0x0550 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SubParamTitle;                                     // 0x0558 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SubParamTitle_1;                                   // 0x0560 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SubParamValue;                                     // 0x0568 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SubParamValue_1;                                   // 0x0570 (size: 0x8)
    class UBP_PalTextBlock_C* Text_Tech_PointValue;                                   // 0x0578 (size: 0x8)
    class UBP_PalTextBlock_C* Text_TechPointTitle;                                    // 0x0580 (size: 0x8)
    class UBP_PalTextBlock_C* TextPowerNum;                                           // 0x0588 (size: 0x8)
    class UVerticalBox* VerticalBox_AdditionalInfo;                                   // 0x0590 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_addeffect_C* WBP_InventoryEquipment_ItemInfo_addeffect; // 0x0598 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_addeffect_C* WBP_InventoryEquipment_ItemInfo_addeffect_1; // 0x05A0 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_addeffect_C* WBP_InventoryEquipment_ItemInfo_addeffect_2; // 0x05A8 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_addeffect_C* WBP_InventoryEquipment_ItemInfo_addeffect_3; // 0x05B0 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_Caution_C* WBP_InventoryEquipment_ItemInfo_Caution; // 0x05B8 (size: 0x8)
    class UWBP_InventoryEquipment_ItemInfo_Tecnology_C* WBP_InventoryEquipment_ItemInfo_Tecnology; // 0x05C0 (size: 0x8)
    class UWBP_InventoryEquipment_PalIcon_C* WBP_InventoryEquipment_PalIcon;          // 0x05C8 (size: 0x8)
    class UWBP_MainMenu_Pal_StatusElement_C* WBP_MainMenu_Pal_StatusElement;          // 0x05D0 (size: 0x8)
    class UWBP_PalKeyGuideIcon_C* WBP_PalKeyGuideIcon;                                // 0x05D8 (size: 0x8)
    class UWBP_PalKeyGuideIcon_C* WBP_PalKeyGuideIcon_1;                              // 0x05E0 (size: 0x8)
    class UWBP_PlayerInputKeyGuideIcon_C* WBP_PlayerInputKeyGuideIcon;                // 0x05E8 (size: 0x8)
    class UWBP_PlayerInputKeyGuideIcon_C* WBP_PlayerInputKeyGuideIcon_1;              // 0x05F0 (size: 0x8)
    class UWBP_PlayerInputKeyGuideIcon_C* WBP_PlayerInputKeyGuideIcon_2;              // 0x05F8 (size: 0x8)
    class UWBP_PlayerInputKeyGuideIcon_C* WBP_PlayerInputKeyGuideIcon_65;             // 0x0600 (size: 0x8)
    class UWBP_ShopSellPrice_C* WBP_ShopSellPrice;                                    // 0x0608 (size: 0x8)
    TEnumAsByte<E_PalUIItemInfoWindowDIsplayType::Type> NowDisplayType;               // 0x0610 (size: 0x1)
    TEnumAsByte<E_PalUIItemInfoWindowDIsplayType::Type> DefaultDisplayType;           // 0x0611 (size: 0x1)
    TMap<class EPalItemTypeA, class FDataTableRowHandle> MainParamMsgIDMap;           // 0x0618 (size: 0x50)
    TMap<class EPalItemTypeA, class FDataTableRowHandle> SubParamMsgIDMap;            // 0x0668 (size: 0x50)
    FDataTableRowHandle MainParamShieldOverrideMsgID;                                 // 0x06B8 (size: 0x10)
    FPalDataTableRowName_UIInputAction UseItem;                                       // 0x06C8 (size: 0x8)
    FPalUICommonItemInfoDisplayData CachedDisplayInfo;                                // 0x06D0 (size: 0x30)
    FDataTableRowHandle EquipMsgID;                                                   // 0x0700 (size: 0x10)
    FDataTableRowHandle RemoveEquipMsgID;                                             // 0x0710 (size: 0x10)
    FDataTableRowHandle ItemNumTitleMsgID;                                            // 0x0720 (size: 0x10)
    FDataTableRowHandle HPRegeneMsgID;                                                // 0x0730 (size: 0x10)
    FDataTableRowHandle RegeneDurationMsgID;                                          // 0x0740 (size: 0x10)
    FDataTableRowHandle MaskedTechTitleMsgID;                                         // 0x0750 (size: 0x10)
    FDataTableRowHandle MaskedTechDescMsgID;                                          // 0x0760 (size: 0x10)
    TArray<FDataTableRowHandle> RarityMsgIDs;                                         // 0x0770 (size: 0x10)
    bool IsBossTechPoint;                                                             // 0x0780 (size: 0x1)
    FDataTableRowHandle NormalMsgId;                                                  // 0x0788 (size: 0x10)
    TArray<class UWBP_InventoryEquipment_ItemInfo_addeffect_C*> AdditionalInfoArray;  // 0x0798 (size: 0x10)

    void ConvertPassiveSkillNameToText(TArray<FName>& PassiveSkillNameArray, TArray<FText>& OutTextArray);
    void Set Sub Param Regene(FPalStatusEffectFoodDataRow FoodData);
    void GetItemRegeneInfo(FName ItemId, bool& IsRegene, FPalStatusEffectFoodDataRow& FoodInfo);
    void SetupPrice();
    void SetupItemRarity();
    void SetupItemDurability();
    void Setup Tech Mat Details(FPalTechnologyRecipeUnlockDataTableRow TechData, bool IsMasked);
    void Get Display Technology Category Name(FName technologyName, FText& CategoryText);
    void Setup by Technology Name(FName technologyName, bool IsMasked, class UTexture2D* IconTexture);
    void Is Equipable Item(class UPalItemSlot* Slot, bool& IsEquipable);
    void OnUpdateTargetSlot(class UPalItemSlot* Slot);
    void UnbindEvent();
    void OnInputMethodChanged(ECommonInputType bNewInputType);
    void SetupUseableKeyGuide_Internal(FName StaticItemId);
    void SetupSkillInfo();
    void SetupTechDetails();
    void SetupKeyGuide();
    void HideAdditionalText();
    void SetImportanyAdditionalText(TArray<FText>& TextArray);
    void Set Simple Additional Text(FText Text);
    void Setup Parameter(const FName StaticItemId);
    void Setup Item Weight();
    void SetupItemNum();
    void HideMainParameter();
    void SetupItemDescription();
    void Setup Item Name();
    void Set Pal Gear Icon(FName ItemId);
    void Setup Item Icon(const FName StaticItemId);
    void SetupByDisplayInfo(FPalUICommonItemInfoDisplayData DisplayInfo);
    void Set Main Param Text(FText Text);
    void Set Main Param Value(int32 Value);
    void HideSubParameter();
    void Set Sub Param Text(FText Text);
    void Change Display Mode(TEnumAsByte<E_PalUIItemInfoWindowDIsplayType::Type> DisplayType);
    void Set Sub Param Value(int32 Value);
    void Construct();
    void OnInitialized();
    void Destruct();
    void ExecuteUbergraph_WBP_InventoryEquipment_ItemInfo(int32 EntryPoint);
}; // Size: 0x7A8

#endif
