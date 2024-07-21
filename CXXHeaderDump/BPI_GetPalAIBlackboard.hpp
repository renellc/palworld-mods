#ifndef UE4SS_SDK_BPI_GetPalAIBlackboard_HPP
#define UE4SS_SDK_BPI_GetPalAIBlackboard_HPP

class IBPI_GetPalAIBlackboard_C : public IInterface
{

    void GetLeaderBB(class UBP_PalAIBlackboard_Common_C*& LeaderPalBrackboard);
    void GetMyBB(class UBP_PalAIBlackboard_Common_C*& PalBrackboard);
}; // Size: 0x28

#endif
