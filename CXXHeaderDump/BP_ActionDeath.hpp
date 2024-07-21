#ifndef UE4SS_SDK_BP_ActionDeath_HPP
#define UE4SS_SDK_BP_ActionDeath_HPP

class UBP_ActionDeath_C : public UPalActionBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0140 (size: 0x8)
    double DestoryInterval;                                                           // 0x0148 (size: 0x8)
    FTransform DefaultTransform;                                                      // 0x0150 (size: 0x60)
    FTimerHandle DestoryHandle;                                                       // 0x01B0 (size: 0x8)
    bool DownForceAble;                                                               // 0x01B8 (size: 0x1)
    bool NoEffect;                                                                    // 0x01B9 (size: 0x1)
    FVector preLocation;                                                              // 0x01C0 (size: 0x18)
    FVector Velocity;                                                                 // 0x01D8 (size: 0x18)

    void InWaterFloat();
    void SetLiftUpAble();
    void BlowScale(double& Scale);
    void BlowCharacter();
    void OnLoaded_262CCA3245DB10CE95CE098A425EF51F(class UObject* Loaded);
    void OnBeginAction();
    void TickAction(float DeltaTime);
    void OnEndAction();
    void ShowEffect();
    void ExecuteUbergraph_BP_ActionDeath(int32 EntryPoint);
}; // Size: 0x1F0

#endif
