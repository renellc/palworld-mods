#ifndef UE4SS_SDK_BP_PalAIBlackboard_Common_HPP
#define UE4SS_SDK_BP_PalAIBlackboard_Common_HPP

class UBP_PalAIBlackboard_Common_C : public UPalAIBlackboardBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0028 (size: 0x8)
    FVector MoveGoal_BB;                                                              // 0x0030 (size: 0x18)
    bool IsRestMode_BB;                                                               // 0x0048 (size: 0x1)
    bool IsReturnTerritoryMode_BB;                                                    // 0x0049 (size: 0x1)
    FVector SpawnedPosition_BB;                                                       // 0x0050 (size: 0x18)
    FVector SpawnerLocation_BB;                                                       // 0x0068 (size: 0x18)
    double ReturnTerritoryRadius_BB;                                                  // 0x0080 (size: 0x8)
    double WalkingRadius_BB;                                                          // 0x0088 (size: 0x8)
    bool IsBattleMode_BB;                                                             // 0x0090 (size: 0x1)
    FVector BattleStartLocation_BB;                                                   // 0x0098 (size: 0x18)
    FPalInstanceID TalkerID_BB;                                                       // 0x00B0 (size: 0x30)
    bool IsEscapeMode_BB;                                                             // 0x00E0 (size: 0x1)
    double SleepStartTime_BB;                                                         // 0x00E8 (size: 0x8)
    double SleepEndTime_BB;                                                           // 0x00F0 (size: 0x8)
    FGuid DrinkWaterSpotID_BB;                                                        // 0x00F8 (size: 0x10)
    bool IsDrinkWaterMode_BB;                                                         // 0x0108 (size: 0x1)
    bool Disable_ReturnTerritory_WildPal;                                             // 0x0109 (size: 0x1)
    double InvaderStartDelayTime_BB;                                                  // 0x0110 (size: 0x8)
    bool Disable_Escape_Invader;                                                      // 0x0118 (size: 0x1)

    void Initialize_PalBB(class AActor* SelfActor);
    void ExecuteUbergraph_BP_PalAIBlackboard_Common(int32 EntryPoint);
}; // Size: 0x119

#endif
