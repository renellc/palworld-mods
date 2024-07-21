#ifndef UE4SS_SDK_BP_FoliageModelChunk_HPP
#define UE4SS_SDK_BP_FoliageModelChunk_HPP

class ABP_FoliageModelChunk_C : public APalFoliageModelChunk
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x03E0 (size: 0x8)
    class UBoxComponent* Box;                                                         // 0x03E8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x03F0 (size: 0x8)

    void OnReceivedChunkGridSize(const int32 NewChunkGridSize);
    void ExecuteUbergraph_BP_FoliageModelChunk(int32 EntryPoint);
}; // Size: 0x3F8

#endif
