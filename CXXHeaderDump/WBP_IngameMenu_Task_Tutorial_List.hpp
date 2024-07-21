#ifndef UE4SS_SDK_WBP_IngameMenu_Task_Tutorial_List_HPP
#define UE4SS_SDK_WBP_IngameMenu_Task_Tutorial_List_HPP

class UWBP_IngameMenu_Task_Tutorial_List_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UWidgetAnimation* Anm_Updated;                                              // 0x0410 (size: 0x8)
    class UWidgetAnimation* Anm_out;                                                  // 0x0418 (size: 0x8)
    class UWidgetAnimation* Anm_Cleared;                                              // 0x0420 (size: 0x8)
    class UWidgetAnimation* Anm_In;                                                   // 0x0428 (size: 0x8)
    class UCheckBox* CheckBox;                                                        // 0x0430 (size: 0x8)
    class UImage* Image_ClearEff;                                                     // 0x0438 (size: 0x8)
    class UImage* Image_ClearEff_1;                                                   // 0x0440 (size: 0x8)
    class UBP_PalRichTextBlock_C* RichText_QuestDescription;                          // 0x0448 (size: 0x8)
    class UBP_PalTextBlock_C* Text_TaskDetail_Progress;                               // 0x0450 (size: 0x8)
    FWBP_IngameMenu_Task_Tutorial_List_COnEndCloseAnim OnEndCloseAnim;                // 0x0458 (size: 0x10)
    void OnEndCloseAnim(class UWBP_IngameMenu_Task_Tutorial_List_C* Widget);
    class UPalQuestData* MyQuest;                                                     // 0x0468 (size: 0x8)

    void OnCompleteQuest(class UPalQuestData* CompletedQuest);
    void OnUpdateQuest(class UPalQuestData* UpdatedQuest);
    void Setup(class UPalQuestData* QuestData);
    void Finished_8C570D2F49F607FCB9D12EBC618DA2B5();
    void Finished_781203AD4157D75A23805F92A2357ADB();
    void AnmEvent_In();
    void AnmEvent_OutAndRemove();
    void AnmEvent_Update();
    void Destruct();
    void ExecuteUbergraph_WBP_IngameMenu_Task_Tutorial_List(int32 EntryPoint);
    void OnEndCloseAnim__DelegateSignature(class UWBP_IngameMenu_Task_Tutorial_List_C* Widget);
}; // Size: 0x470

#endif
