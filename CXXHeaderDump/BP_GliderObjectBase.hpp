#ifndef UE4SS_SDK_BP_GliderObjectBase_HPP
#define UE4SS_SDK_BP_GliderObjectBase_HPP

class ABP_GliderObjectBase_C : public APalGliderObject
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0328 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0330 (size: 0x8)

    void ReceiveBeginPlay();
    void OnStartGliding();
    void OnEndGliding();
    void ExecuteUbergraph_BP_GliderObjectBase(int32 EntryPoint);
}; // Size: 0x338

#endif
