#ifndef UE4SS_SDK_WBP_AutoSave_HPP
#define UE4SS_SDK_WBP_AutoSave_HPP

class UWBP_AutoSave_C : public UUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0278 (size: 0x8)
    class UWidgetAnimation* Anm_Saving;                                               // 0x0280 (size: 0x8)
    class UImage* Image_IconBase;                                                     // 0x0288 (size: 0x8)
    class UImage* Image_IconPart_0;                                                   // 0x0290 (size: 0x8)
    class UImage* Image_IconPart_1;                                                   // 0x0298 (size: 0x8)
    class UImage* Image_IconPart_2;                                                   // 0x02A0 (size: 0x8)
    class UImage* Image_IconPart_3;                                                   // 0x02A8 (size: 0x8)
    class UImage* Image_IconPart_4;                                                   // 0x02B0 (size: 0x8)
    class UImage* Image_IconPart_5;                                                   // 0x02B8 (size: 0x8)
    bool IsForceDisplayngTime;                                                        // 0x02C0 (size: 0x1)
    FTimerHandle ForceDisplayTimerHandle;                                             // 0x02C8 (size: 0x8)
    TMap<class FName, class bool> SavingFlagMap;                                      // 0x02D0 (size: 0x50)
    FName WorldSavingKey;                                                             // 0x0320 (size: 0x8)
    FName LocalSavingKey;                                                             // 0x0328 (size: 0x8)
    double ForceDisplayTime;                                                          // 0x0330 (size: 0x8)

    void OnEndedForceDisplayingTime();
    void IsAllSaveCompleted(bool& bCompleted);
    void EndSave(FName SavingKey);
    void StartSaving(FName SavingKey);
    void Display();
    void Hide();
    void AnmEvent_Loop();
    void AnmEvent_Stop();
    void Destruct();
    void Construct();
    void OnStartWorldSaving();
    void OnStartLocalSaving();
    void OnEndedWorldSave(bool IsSuccess);
    void OnEndedLocalSave(bool IsSuccess);
    void ExecuteUbergraph_WBP_AutoSave(int32 EntryPoint);
}; // Size: 0x338

#endif
