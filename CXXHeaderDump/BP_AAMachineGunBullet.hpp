#ifndef UE4SS_SDK_BP_AAMachineGunBullet_HPP
#define UE4SS_SDK_BP_AAMachineGunBullet_HPP

class ABP_AAMachineGunBullet_C : public ABP_NormalBullet_NPC_C
{

    void OnHitToActor(class UPrimitiveComponent* HitComp, class AActor* OtherActor, class UPrimitiveComponent* OtherComp, const FHitResult& Hit);
}; // Size: 0x380

#endif
