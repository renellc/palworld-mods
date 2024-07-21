#ifndef UE4SS_SDK_BP_AIAction_ReturnTerritory_WildPal_HPP
#define UE4SS_SDK_BP_AIAction_ReturnTerritory_WildPal_HPP

class UBP_AIAction_ReturnTerritory_WildPal_C : public UPalAIActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0130 (size: 0x8)
    FVector SpawnedPosition;                                                          // 0x0138 (size: 0x18)
    double StackTimer;                                                                // 0x0150 (size: 0x8)

    void GetBlackboard(class UBP_PalAIBlackboard_Common_C*& AsBP Pal AIBlackboard Common);
    void GetControllerRef(class APalAIController*& PalAIController);
    void ActionStart(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionPause(class APawn* ControlledPawn);
    void ActionResume(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ExecuteUbergraph_BP_AIAction_ReturnTerritory_WildPal(int32 EntryPoint);
}; // Size: 0x158

#endif
