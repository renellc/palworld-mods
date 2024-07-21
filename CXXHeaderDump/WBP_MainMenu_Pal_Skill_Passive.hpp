#ifndef UE4SS_SDK_WBP_MainMenu_Pal_Skill_Passive_HPP
#define UE4SS_SDK_WBP_MainMenu_Pal_Skill_Passive_HPP

class UWBP_MainMenu_Pal_Skill_Passive_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_BaseBlack;                                            // 0x0280 (size: 0x8)
    class UWidgetAnimation* Anm_BaseWhite;                                            // 0x0288 (size: 0x8)
    class UWidgetAnimation* Anm_CommonFocus;                                          // 0x0290 (size: 0x8)
    class UWidgetAnimation* Anm_ChangeFrame;                                          // 0x0298 (size: 0x8)
    class UWidgetAnimation* AnmDebuff_Focus;                                          // 0x02A0 (size: 0x8)
    class UWidgetAnimation* Anm_Buff_Focus;                                           // 0x02A8 (size: 0x8)
    class UWidgetAnimation* Anm_Rare_Focus;                                           // 0x02B0 (size: 0x8)
    class UWidgetAnimation* AnmDebuff_Normal;                                         // 0x02B8 (size: 0x8)
    class UWidgetAnimation* Anm_Buff_Normal;                                          // 0x02C0 (size: 0x8)
    class UWidgetAnimation* Anm_Rare_Normal;                                          // 0x02C8 (size: 0x8)
    class UImage* IconRankArrow;                                                      // 0x02D0 (size: 0x8)
    class UImage* Image_Selected_1;                                                   // 0x02D8 (size: 0x8)
    class UBP_PalTextBlock_C* Text_SkillName;                                         // 0x02E0 (size: 0x8)
    class UWBP_MainMenu_Cursor_C* WBP_MainMenu_Cursor;                                // 0x02E8 (size: 0x8)
    class UWBP_PalCommonButton_C* WBP_PalCommonButton;                                // 0x02F0 (size: 0x8)
    FWBP_MainMenu_Pal_Skill_Passive_COnHovered OnHovered;                             // 0x02F8 (size: 0x10)
    void OnHovered(class UWBP_MainMenu_Pal_Skill_Passive_C* selfWidget);
    FWBP_MainMenu_Pal_Skill_Passive_COnUnhovered OnUnhovered;                         // 0x0308 (size: 0x10)
    void OnUnhovered(class UWBP_MainMenu_Pal_Skill_Passive_C* selfWidget);
    FName BindedPassiveSkillName;                                                     // 0x0318 (size: 0x8)

    void GetBindedPassiveSkillName(FName& PassiveSkillName);
    void Clear();
    void SetPassiveSkill(FName SkillName);
    void AnmEvent_Rare();
    void AnmEvent_Bad();
    void AnmEvent_Common();
    void AnmEvent_BgBlack();
    void BndEvt__WBP_MainMenu_Pal_Skill_Passive_WBP_PalCommonButton_K2Node_ComponentBoundEvent_2_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void BndEvt__WBP_MainMenu_Pal_Skill_Passive_WBP_PalCommonButton_K2Node_ComponentBoundEvent_0_CommonButtonBaseClicked__DelegateSignature(class UCommonButtonBase* Button);
    void ExecuteUbergraph_WBP_MainMenu_Pal_Skill_Passive(int32 EntryPoint);
    void OnUnhovered__DelegateSignature(class UWBP_MainMenu_Pal_Skill_Passive_C* selfWidget);
    void OnHovered__DelegateSignature(class UWBP_MainMenu_Pal_Skill_Passive_C* selfWidget);
}; // Size: 0x320

#endif
