#ifndef UE4SS_SDK_BP_MultiTalk_SimpleInOrder_HPP
#define UE4SS_SDK_BP_MultiTalk_SimpleInOrder_HPP

class UBP_MultiTalk_SimpleInOrder_C : public UPalNPCMultiTalkHandle
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0038 (size: 0x8)
    TArray<class UDataTable*> TalkList;                                               // 0x0040 (size: 0x10)
    FName RecordKey;                                                                  // 0x0050 (size: 0x8)

    void GetMaxTalkCount(int32& MaxTalkCount);
    class UDataTable* GetTalkData(const FName& inTalkID);
    void OnFinishOneTalk();
    void ExecuteUbergraph_BP_MultiTalk_SimpleInOrder(int32 EntryPoint);
}; // Size: 0x58

#endif
