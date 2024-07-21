#ifndef UE4SS_SDK_ABP_Player_Hair_HPP
#define UE4SS_SDK_ABP_Player_Hair_HPP

struct FAnimBlueprintGeneratedConstantData : public FAnimBlueprintConstantData
{
    FName __NameProperty_20;                                                          // 0x0004 (size: 0x8)
    FName __NameProperty_21;                                                          // 0x000C (size: 0x8)
    FName __NameProperty_22;                                                          // 0x0014 (size: 0x8)
    class UBlendProfile* __BlendProfile_23;                                           // 0x0020 (size: 0x8)
    class UCurveFloat* __CurveFloat_24;                                               // 0x0028 (size: 0x8)
    bool __BoolProperty_25;                                                           // 0x0030 (size: 0x1)
    EAlphaBlendOption __EnumProperty_26;                                              // 0x0031 (size: 0x1)
    EBlendListTransitionType __EnumProperty_27;                                       // 0x0032 (size: 0x1)
    TArray<float> __ArrayProperty_28;                                                 // 0x0038 (size: 0x10)
    FAnimNodeFunctionRef __StructProperty_29;                                         // 0x0048 (size: 0x20)
    FAnimSubsystem_PropertyAccess AnimBlueprintExtension_PropertyAccess;              // 0x0068 (size: 0x80)
    FAnimSubsystem_Base AnimBlueprintExtension_Base;                                  // 0x00E8 (size: 0x18)

}; // Size: 0x100

struct FAnimBlueprintGeneratedMutableData : public FAnimBlueprintMutableData
{
    bool __BoolProperty;                                                              // 0x0001 (size: 0x1)

}; // Size: 0x2

class UABP_Player_Hair_C : public UAnimInstance
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0350 (size: 0x8)
    FAnimBlueprintGeneratedMutableData __AnimBlueprintMutables;                       // 0x0358 (size: 0x2)
    FAnimSubsystemInstance AnimBlueprintExtension_PropertyAccess;                     // 0x0360 (size: 0x8)
    FAnimSubsystemInstance AnimBlueprintExtension_Base;                               // 0x0368 (size: 0x8)
    FAnimNode_Root AnimGraphNode_Root_1;                                              // 0x0370 (size: 0x20)
    FAnimNode_LinkedInputPose AnimGraphNode_LinkedInputPose;                          // 0x0390 (size: 0xC8)
    FAnimNode_Root AnimGraphNode_Root;                                                // 0x0458 (size: 0x20)
    FAnimNode_CopyPoseFromMesh AnimGraphNode_CopyPoseFromMesh_1;                      // 0x0478 (size: 0x1D8)
    FAnimNode_LinkedAnimLayer AnimGraphNode_LinkedAnimLayer;                          // 0x0650 (size: 0xC8)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool;                          // 0x0718 (size: 0x48)
    FAnimNode_CopyPoseFromMesh AnimGraphNode_CopyPoseFromMesh;                        // 0x0760 (size: 0x1D8)
    bool IsDedicatedServer;                                                           // 0x0938 (size: 0x1)

    void HairLayer(FPoseLink InPose, FPoseLink& HairLayer);
    void AnimGraph(FPoseLink& AnimGraph);
    void BlueprintBeginPlay();
    void ExecuteUbergraph_ABP_Player_Hair(int32 EntryPoint);
}; // Size: 0x939

#endif
