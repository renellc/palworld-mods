#ifndef UE4SS_SDK_BP_MultiTalk_OrderByName_HPP
#define UE4SS_SDK_BP_MultiTalk_OrderByName_HPP

class UBP_MultiTalk_OrderByName_C : public UPalNPCMultiTalkHandle
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)
    class UDataTable* TalkData;                                                       // 0x0040 (size: 0x8)
    FName RecordKey;                                                                  // 0x0048 (size: 0x8)

    void GetMaxTalkCount(int32& MaxTalkCount);
    void GetStartTalkSequence(FString& Sequence);
    class UDataTable* GetTalkData(const FName& inTalkID);
    void OnFinishOneTalk();
    void ExecuteUbergraph_BP_MultiTalk_OrderByName(int32 EntryPoint);
}; // Size: 0x50

#endif
