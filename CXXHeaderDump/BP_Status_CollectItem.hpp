#ifndef UE4SS_SDK_BP_Status_CollectItem_HPP
#define UE4SS_SDK_BP_Status_CollectItem_HPP

class UBP_Status_CollectItem_C : public UPalStatusCollectItem
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0058 (size: 0x8)
    int32 CollectItemTimeMinuteMin;                                                   // 0x0060 (size: 0x4)
    int32 CollectItemTimeMinuteMax;                                                   // 0x0064 (size: 0x4)
    double CollectItemTimeSec;                                                        // 0x0068 (size: 0x8)
    double ElapsedTimeSec;                                                            // 0x0070 (size: 0x8)
    TArray<FFPassiveSkillCollectItemLotteryData> LotteryTable;                        // 0x0078 (size: 0x10)
    TArray<int32> RankTable;                                                          // 0x0088 (size: 0x10)
    TMap<FName, int32> DebugLotteryCounter;                                           // 0x0098 (size: 0x50)
    bool IsDebugLottery;                                                              // 0x00E8 (size: 0x1)
    FName DebugLotteryItemName;                                                       // 0x00EC (size: 0x8)
    FPalStaticItemIdAndNum AddItemInfo;                                               // 0x00F4 (size: 0xC)
    bool IsPaused;                                                                    // 0x0100 (size: 0x1)
    TSubclassOf<class UBP_AIAction_SpawnItemBase_C> BaseCampActionClass;              // 0x0108 (size: 0x8)
    class UPalAIActionBase* AIAction;                                                 // 0x0110 (size: 0x8)
    TArray<class UDataTable*> LotteryTables;                                          // 0x0118 (size: 0x10)
    bool IsActionPlaying;                                                             // 0x0128 (size: 0x1)

    void AddLog_UseSkillInBaseCamp();
    void AddLog_UseSkill();
    void GetRank(int32& Rank);
    void Observe AIAction();
    void GetLotteryDataTable(class UDataTable*& DataTable);
    void CreateLotteryTable(TArray<FFPassiveSkillCollectItemLotteryData>& Result);
    void Get Base Camp Action Class(TSubclassOf<class UBP_AIAction_SpawnItemBase_C>& Class);
    void SetPause(bool Pause);
    void IsActorDead(bool& IsDead);
    void Get Name Text Id(FName& SkillNameTextId);
    void OnAddItem(EPalItemOperationResult Result);
    void Get Lottery Index(int32 LotteryValue, int32& Index);
    void GetRandVal(int32 Max, int32& RandVal);
    void Is Actor Active(bool& IsActive);
    void UpdateSkill(double DeltaTime);
    void AddItem(FPalStaticItemIdAndNum ItemInfo);
    void LotteryItem(FPalStaticItemIdAndNum& ItemInfo);
    void ResetElapsedTime();
    void SetCollectItemTime();
    void OnBeginStatus();
    void OnBreakStatus();
    void OnEndStatus();
    void TickStatus(float DeltaTime);
    void PlayAction_SpawnItem(FPalStaticItemIdAndNum AddItemInfo);
    void ExecuteUbergraph_BP_Status_CollectItem(int32 EntryPoint);
}; // Size: 0x129

#endif
