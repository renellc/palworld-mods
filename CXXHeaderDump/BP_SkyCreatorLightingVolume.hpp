#ifndef UE4SS_SDK_BP_SkyCreatorLightingVolume_HPP
#define UE4SS_SDK_BP_SkyCreatorLightingVolume_HPP

class ABP_SkyCreatorLightingVolume_C : public APalSkyCreatorLightingVolume
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x02E0 (size: 0x8)
    class UBoxComponent* Box;                                                         // 0x02E8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x02F0 (size: 0x8)

    void ReceiveActorBeginOverlap(class AActor* OtherActor);
    void ReceiveActorEndOverlap(class AActor* OtherActor);
    void ExecuteUbergraph_BP_SkyCreatorLightingVolume(int32 EntryPoint);
}; // Size: 0x2F8

#endif
