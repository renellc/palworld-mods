#ifndef UE4SS_SDK_BP_PalIncidentSystem_HPP
#define UE4SS_SDK_BP_PalIncidentSystem_HPP

class UBP_PalIncidentSystem_C : public UPalIncidentSystem
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x01F0 (size: 0x8)

    void Lottery Index by Weights(TArray<double>& Weights, int32& Index);
    void LotteryItemAndNum(const class UDataTable* PresentLotteryDataTable, FName& OutItemName, int32& OutNum);
    void TalkCustomFunction_AttackToPlayer(class APalPlayerCharacter* TalkPlayer, class APalCharacter* TargetNPC, const class UDataTable* CunstomFuncParam);
    void ExecuteUbergraph_BP_PalIncidentSystem(int32 EntryPoint);
}; // Size: 0x1F8

#endif
