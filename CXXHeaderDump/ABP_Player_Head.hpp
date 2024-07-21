#ifndef UE4SS_SDK_ABP_Player_Head_HPP
#define UE4SS_SDK_ABP_Player_Head_HPP

struct FAnimBlueprintGeneratedConstantData : public FAnimBlueprintConstantData
{
    FName __NameProperty_32;                                                          // 0x0004 (size: 0x8)
    FName __NameProperty_33;                                                          // 0x000C (size: 0x8)
    FName __NameProperty_34;                                                          // 0x0014 (size: 0x8)
    class UBlendProfile* __BlendProfile_35;                                           // 0x0020 (size: 0x8)
    class UCurveFloat* __CurveFloat_36;                                               // 0x0028 (size: 0x8)
    bool __BoolProperty_37;                                                           // 0x0030 (size: 0x1)
    EAlphaBlendOption __EnumProperty_38;                                              // 0x0031 (size: 0x1)
    EBlendListTransitionType __EnumProperty_39;                                       // 0x0032 (size: 0x1)
    TArray<float> __ArrayProperty_40;                                                 // 0x0038 (size: 0x10)
    FAnimNodeFunctionRef __StructProperty_41;                                         // 0x0048 (size: 0x20)
    FAnimSubsystem_PropertyAccess AnimBlueprintExtension_PropertyAccess;              // 0x0068 (size: 0x80)
    FAnimSubsystem_Base AnimBlueprintExtension_Base;                                  // 0x00E8 (size: 0x18)

}; // Size: 0x100

struct FAnimBlueprintGeneratedMutableData : public FAnimBlueprintMutableData
{
    bool __BoolProperty;                                                              // 0x0001 (size: 0x1)

}; // Size: 0x2

class UABP_Player_Head_C : public UPalPlayerHeadAnimInstance
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0380 (size: 0x8)
    FAnimBlueprintGeneratedMutableData __AnimBlueprintMutables;                       // 0x0388 (size: 0x2)
    FAnimSubsystemInstance AnimBlueprintExtension_PropertyAccess;                     // 0x0390 (size: 0x8)
    FAnimSubsystemInstance AnimBlueprintExtension_Base;                               // 0x0398 (size: 0x8)
    FAnimNode_Root AnimGraphNode_Root_1;                                              // 0x03A0 (size: 0x20)
    FAnimNode_LinkedInputPose AnimGraphNode_LinkedInputPose;                          // 0x03C0 (size: 0xC8)
    FAnimNode_ModifyBone AnimGraphNode_ModifyBone_1;                                  // 0x0488 (size: 0x128)
    FAnimNode_ConvertLocalToComponentSpace AnimGraphNode_LocalToComponentSpace;       // 0x05B0 (size: 0x20)
    FAnimNode_ModifyBone AnimGraphNode_ModifyBone;                                    // 0x05D0 (size: 0x128)
    FAnimNode_ConvertComponentToLocalSpace AnimGraphNode_ComponentToLocalSpace;       // 0x06F8 (size: 0x20)
    FAnimNode_Root AnimGraphNode_Root;                                                // 0x0718 (size: 0x20)
    FAnimNode_CopyPoseFromMesh AnimGraphNode_CopyPoseFromMesh_1;                      // 0x0738 (size: 0x1D8)
    FAnimNode_LinkedAnimLayer AnimGraphNode_LinkedAnimLayer;                          // 0x0910 (size: 0xC8)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool;                          // 0x09D8 (size: 0x48)
    FAnimNode_CopyPoseFromMesh AnimGraphNode_CopyPoseFromMesh;                        // 0x0A20 (size: 0x1D8)
    FVector EyePos_L;                                                                 // 0x0BF8 (size: 0x18)
    FVector EyePos_R;                                                                 // 0x0C10 (size: 0x18)
    bool InitEnd;                                                                     // 0x0C28 (size: 0x1)
    bool IsDedicatedServer;                                                           // 0x0C29 (size: 0x1)

    void EyeLocationFix(FPoseLink InPose, FPoseLink& EyeLocationFix);
    void AnimGraph(FPoseLink& AnimGraph);
    void BlueprintBeginPlay();
    void ExecuteUbergraph_ABP_Player_Head(int32 EntryPoint);
}; // Size: 0xC2A

#endif
