#ifndef UE4SS_SDK_BP_PalLocalPlayerSystemSound_HPP
#define UE4SS_SDK_BP_PalLocalPlayerSystemSound_HPP

class UBP_PalLocalPlayerSystemSound_C : public UPalGetWorldUObject
{

    void OnChangeHunger(EPalStatusHungerType Current, EPalStatusHungerType Last);
    void SetupLocalPlayer(class APalPlayerCharacter* Player);
}; // Size: 0x28

#endif
