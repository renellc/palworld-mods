#ifndef UE4SS_SDK_BP_HitCalculator_MyLocation_HPP
#define UE4SS_SDK_BP_HitCalculator_MyLocation_HPP

class UBP_HitCalculator_MyLocation_C : public UPalHitLocationCalculator
{

    FVector CalcLocation(class UPrimitiveComponent* MyHitComponent, class UPrimitiveComponent* OtherHitComponent);
}; // Size: 0x28

#endif
