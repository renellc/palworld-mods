#ifndef UE4SS_SDK_BP_PalGameSetting_HPP
#define UE4SS_SDK_BP_PalGameSetting_HPP

class UBP_PalGameSetting_C : public UPalGameSetting
{

    float GetWeakScale(int32 weakCount);
    float CalcCaptureRate(float captureItemLevel, const class UPalIndividualCharacterHandle* targetHandle, const class UPalIndividualCharacterHandle* throwCharacterHandle);
    float GetEnemyMarkScale(const FVector& targetPosition, const FVector& selfPosition);
}; // Size: 0x1848

#endif
