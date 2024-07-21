#ifndef UE4SS_SDK_BP_Fluid_FunctionLibrary_HPP
#define UE4SS_SDK_BP_Fluid_FunctionLibrary_HPP

class UBP_Fluid_FunctionLibrary_C : public UBlueprintFunctionLibrary
{

    void DrawFluidSim_Capture(class ABP_FluidController_C*& Fluid Controller, class UMaterialInstanceDynamic*& Draw Material, FVector Draw Location, class UObject* __WorldContext);
    void DistanceCheck(FVector Location 1, FVector Location 2, double Distance Radius, class UObject* __WorldContext, double& Distance, bool& OutOfRadius);
    void DrawFluidSim(class ABP_FluidController_C*& Fluid Controller, class UMaterialInstanceDynamic*& Draw Material, FVector Draw Location, double Draw Size, double Draw Intensity, class UObject* __WorldContext);
}; // Size: 0x28

#endif
