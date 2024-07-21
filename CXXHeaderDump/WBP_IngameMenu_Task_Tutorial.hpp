#ifndef UE4SS_SDK_WBP_IngameMenu_Task_Tutorial_HPP
#define UE4SS_SDK_WBP_IngameMenu_Task_Tutorial_HPP

class UWBP_IngameMenu_Task_Tutorial_C : public UUserWidget
{
    class UCanvasPanel* Canvas_TaskDetail;                                            // 0x0278 (size: 0x8)
    class UVerticalBox* VerticalBox_TaskDetail;                                       // 0x0280 (size: 0x8)
    TMap<class UWBP_IngameMenu_Task_Tutorial_List_C*, class UPalQuestData*> CreatedWidgetMap; // 0x0288 (size: 0x50)

    void GetNowDisplayQuestWidgetNum(int32& Num);
    void OnClosedQuestWidget(class UWBP_IngameMenu_Task_Tutorial_List_C* Widget);
    void AddQuest(class UPalQuestData* QuestData);
}; // Size: 0x2D8

#endif
