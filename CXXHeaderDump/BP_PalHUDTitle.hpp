#ifndef UE4SS_SDK_BP_PalHUDTitle_HPP
#define UE4SS_SDK_BP_PalHUDTitle_HPP

class ABP_PalHUDTitle_C : public APalHUDInGame
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0608 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0610 (size: 0x8)

    void OnLoaded_981603EC4815B7D716BC83B5FE8C3FD0(UClass* Loaded);
    void Initialize();
    void ExecuteUbergraph_BP_PalHUDTitle(int32 EntryPoint);
}; // Size: 0x618

#endif
