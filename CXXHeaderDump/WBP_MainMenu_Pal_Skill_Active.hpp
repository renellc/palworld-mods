#ifndef UE4SS_SDK_WBP_MainMenu_Pal_Skill_Active_HPP
#define UE4SS_SDK_WBP_MainMenu_Pal_Skill_Active_HPP

class UWBP_MainMenu_Pal_Skill_Active_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anim_Empty;                                               // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_NormalToFocus;                                        // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_Click;                                                // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_Focus;                                                // 0x0298 (size: 0x8)
    class UWidgetAnimation* Anm_Normal;                                               // 0x02A0 (size: 0x8)
    class UImage* Image_58;                                                           // 0x02A8 (size: 0x8)
    class UImage* Image_Element;                                                      // 0x02B0 (size: 0x8)
    class UImage* Image_Selected;                                                     // 0x02B8 (size: 0x8)
    class UImage* Image_Selected_1;                                                   // 0x02C0 (size: 0x8)
    class UImage* SkillBase;                                                          // 0x02C8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_WazaName;                                          // 0x02D0 (size: 0x8)
    class UBP_PalTextBlock_C* Text_WazaPower;                                         // 0x02D8 (size: 0x8)
    class UWBP_MainMenu_Cursor_C* WBP_MainMenu_Cursor;                                // 0x02E0 (size: 0x8)
    class UWBP_PalInvisibleButton_C* WBP_PalInvisibleButton;                          // 0x02E8 (size: 0x8)
    FWBP_MainMenu_Pal_Skill_Active_COnHovered OnHovered;                              // 0x02F0 (size: 0x10)
    void OnHovered(class UWBP_MainMenu_Pal_Skill_Active_C* selfWidget);
    FWBP_MainMenu_Pal_Skill_Active_COnUnhovered OnUnhovered;                          // 0x0300 (size: 0x10)
    void OnUnhovered(class UWBP_MainMenu_Pal_Skill_Active_C* selfWidget);
    EPalWazaID BindedWazaID;                                                          // 0x0310 (size: 0x1)
    FWBP_MainMenu_Pal_Skill_Active_COnClicked OnClicked;                              // 0x0318 (size: 0x10)
    void OnClicked(class UWBP_MainMenu_Pal_Skill_Active_C* selfWidget);
    TMap<class EPalElementType, class TSoftObjectPtr<UTexture2D>> ElementTextureMap;  // 0x0328 (size: 0x50)
    FDataTableRowHandle EmptySlotMsgID;                                               // 0x0378 (size: 0x10)

    void SetEmptyInfo();
    void GetBindedWazaID(EPalWazaID& WazaID);
    void Clear();
    void SetWazaID(EPalWazaID WazaID);
    void AnmEvent_Selected();
    void AnmEvent_Unselcted();
    void Construct();
    void BndEvt__WBP_MainMenu_Pal_Skill_Active_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_MainMenu_Pal_Skill_Active_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_4_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_MainMenu_Pal_Skill_Active_WBP_PalInvisibleButton_K2Node_ComponentBoundEvent_5_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_MainMenu_Pal_Skill_Active(int32 EntryPoint);
    void OnClicked__DelegateSignature(class UWBP_MainMenu_Pal_Skill_Active_C* selfWidget);
    void OnUnhovered__DelegateSignature(class UWBP_MainMenu_Pal_Skill_Active_C* selfWidget);
    void OnHovered__DelegateSignature(class UWBP_MainMenu_Pal_Skill_Active_C* selfWidget);
}; // Size: 0x388

#endif
