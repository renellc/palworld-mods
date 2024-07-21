#ifndef UE4SS_SDK_BP_NPCInteractConditionFunctions_HPP
#define UE4SS_SDK_BP_NPCInteractConditionFunctions_HPP

class UBP_NPCInteractConditionFunctions_C : public UPalNPCInteractConditionFunctions
{

    void IsLive(class UPalNPCInteractCondition* Condition);
    void NoCombat(class UPalNPCInteractCondition* Condition);
    void IsOtomoSpawned(class UPalNPCInteractCondition* Condition);
    void HasItems(class UPalNPCInteractCondition* Condition, TArray<FName>& ItemIds, int32 Num);
    void HasItem(class UPalNPCInteractCondition* Condition, FName ItemId, int32 Num);
    void TestFunction(class UPalNPCInteractCondition* Condition);
}; // Size: 0x30

#endif
