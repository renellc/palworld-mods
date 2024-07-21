#ifndef UE4SS_SDK_BP_SupplyDropActor_Meteor_HPP
#define UE4SS_SDK_BP_SupplyDropActor_Meteor_HPP

class ABP_SupplyDropActor_Meteor_C : public APalSupplyDropActor
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0308 (size: 0x8)
    class UStaticMeshComponent* Sphere;                                               // 0x0310 (size: 0x8)
    class UNiagaraComponent* Niagara;                                                 // 0x0318 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x0320 (size: 0x8)

    void ReceiveBeginPlay();
    void OnLanded_BP();
    void ExecuteUbergraph_BP_SupplyDropActor_Meteor(int32 EntryPoint);
}; // Size: 0x328

#endif
