#ifndef UE4SS_SDK_BP_PalItemIDManager_HPP
#define UE4SS_SDK_BP_PalItemIDManager_HPP

class UBP_PalItemIDManager_C : public UPalItemIDManager
{
    TMap<class EPalElementType, class FPalItemPalEggDataHandle> PalEggStaticItemIdMap; // 0x0058 (size: 0x50)
    FDataTableRowHandle DefaultPalEggStaticItemId;                                    // 0x00A8 (size: 0x10)

    void GetPalEggRank(int32 PalRarity, class UObject* WorldContextObject, int32& PalEggRank);
    FName GetStaticItemIdPalEgg(const class UObject* WorldContextObject, const FName CharacterID);
}; // Size: 0xB8

#endif
