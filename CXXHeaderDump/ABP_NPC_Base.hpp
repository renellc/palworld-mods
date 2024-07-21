#ifndef UE4SS_SDK_ABP_NPC_Base_HPP
#define UE4SS_SDK_ABP_NPC_Base_HPP

struct FAnimBlueprintGeneratedConstantData : public FAnimBlueprintConstantData
{
    FName __NameProperty_489;                                                         // 0x0004 (size: 0x8)
    FName __NameProperty_490;                                                         // 0x000C (size: 0x8)
    FName __NameProperty_491;                                                         // 0x0014 (size: 0x8)
    FName __NameProperty_492;                                                         // 0x001C (size: 0x8)
    FName __NameProperty_493;                                                         // 0x0024 (size: 0x8)
    FName __NameProperty_494;                                                         // 0x002C (size: 0x8)
    FName __NameProperty_495;                                                         // 0x0034 (size: 0x8)
    FName __NameProperty_496;                                                         // 0x003C (size: 0x8)
    FName __NameProperty_497;                                                         // 0x0044 (size: 0x8)
    int32 __IntProperty_498;                                                          // 0x004C (size: 0x4)
    FName __NameProperty_499;                                                         // 0x0050 (size: 0x8)
    int32 __IntProperty_500;                                                          // 0x0058 (size: 0x4)
    FName __NameProperty_501;                                                         // 0x005C (size: 0x8)
    int32 __IntProperty_502;                                                          // 0x0064 (size: 0x4)
    class UBlendProfile* __BlendProfile_503;                                          // 0x0068 (size: 0x8)
    class UCurveFloat* __CurveFloat_504;                                              // 0x0070 (size: 0x8)
    EAlphaBlendOption __EnumProperty_505;                                             // 0x0078 (size: 0x1)
    EBlendListTransitionType __EnumProperty_506;                                      // 0x0079 (size: 0x1)
    TArray<float> __ArrayProperty_507;                                                // 0x0080 (size: 0x10)
    FName __NameProperty_508;                                                         // 0x0090 (size: 0x8)
    int32 __IntProperty_509;                                                          // 0x0098 (size: 0x4)
    bool __BoolProperty_510;                                                          // 0x009C (size: 0x1)
    float __FloatProperty_511;                                                        // 0x00A0 (size: 0x4)
    FInputScaleBiasClampConstants __StructProperty_512;                               // 0x00A4 (size: 0x2C)
    float __FloatProperty_513;                                                        // 0x00D0 (size: 0x4)
    bool __BoolProperty_514;                                                          // 0x00D4 (size: 0x1)
    EAnimSyncMethod __EnumProperty_515;                                               // 0x00D5 (size: 0x1)
    TEnumAsByte<EAnimGroupRole::Type> __ByteProperty_516;                             // 0x00D6 (size: 0x1)
    FName __NameProperty_517;                                                         // 0x00D8 (size: 0x8)
    FName __NameProperty_518;                                                         // 0x00E0 (size: 0x8)
    FName __NameProperty_519;                                                         // 0x00E8 (size: 0x8)
    int32 __IntProperty_520;                                                          // 0x00F0 (size: 0x4)
    FAnimNodeFunctionRef __StructProperty_521;                                        // 0x00F8 (size: 0x20)
    FAnimSubsystem_PropertyAccess AnimBlueprintExtension_PropertyAccess;              // 0x0118 (size: 0x80)
    FAnimSubsystem_Base AnimBlueprintExtension_Base;                                  // 0x0198 (size: 0x18)

}; // Size: 0x1B0

struct FAnimBlueprintGeneratedMutableData : public FAnimBlueprintMutableData
{
    bool __BoolProperty;                                                              // 0x0001 (size: 0x1)
    bool __BoolProperty_0;                                                            // 0x0002 (size: 0x1)
    bool __BoolProperty_1;                                                            // 0x0003 (size: 0x1)
    bool __BoolProperty_2;                                                            // 0x0004 (size: 0x1)
    bool __BoolProperty_3;                                                            // 0x0005 (size: 0x1)
    bool __BoolProperty_4;                                                            // 0x0006 (size: 0x1)
    bool __BoolProperty_5;                                                            // 0x0007 (size: 0x1)
    float __FloatProperty_6;                                                          // 0x0008 (size: 0x4)
    bool __BoolProperty_7;                                                            // 0x000C (size: 0x1)
    bool __BoolProperty_8;                                                            // 0x000D (size: 0x1)
    float __FloatProperty_9;                                                          // 0x0010 (size: 0x4)
    float __FloatProperty_10;                                                         // 0x0014 (size: 0x4)
    float __FloatProperty_11;                                                         // 0x0018 (size: 0x4)

}; // Size: 0x1C

class UABP_NPC_Base_C : public UPalAnimInstance
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0610 (size: 0x8)
    FAnimBlueprintGeneratedMutableData __AnimBlueprintMutables;                       // 0x0618 (size: 0x1C)
    FAnimSubsystemInstance AnimBlueprintExtension_PropertyAccess;                     // 0x0638 (size: 0x8)
    FAnimSubsystemInstance AnimBlueprintExtension_Base;                               // 0x0640 (size: 0x8)
    FAnimNode_Root AnimGraphNode_Root_3;                                              // 0x0648 (size: 0x20)
    FAnimNode_LinkedInputPose AnimGraphNode_LinkedInputPose_2;                        // 0x0668 (size: 0xC8)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose_6;                          // 0x0730 (size: 0x108)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_11;                           // 0x0838 (size: 0x28)
    FAnimNode_Fabrik AnimGraphNode_Fabrik;                                            // 0x0860 (size: 0x1F0)
    FAnimNode_ConvertLocalToComponentSpace AnimGraphNode_LocalToComponentSpace_1;     // 0x0A50 (size: 0x20)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_8;                        // 0x0A70 (size: 0x48)
    FAnimNode_ConvertComponentToLocalSpace AnimGraphNode_ComponentToLocalSpace_1;     // 0x0AB8 (size: 0x20)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_10;                           // 0x0AD8 (size: 0x28)
    FAnimNode_Root AnimGraphNode_Root_2;                                              // 0x0B00 (size: 0x20)
    FAnimNode_LinkedInputPose AnimGraphNode_LinkedInputPose_1;                        // 0x0B20 (size: 0xC8)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose_5;                          // 0x0BE8 (size: 0x108)
    FAnimNode_LayeredBoneBlend AnimGraphNode_LayeredBoneBlend_2;                      // 0x0CF0 (size: 0xE0)
    FAnimNode_LayeredBoneBlend AnimGraphNode_LayeredBoneBlend_1;                      // 0x0DD0 (size: 0xE0)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose_4;                          // 0x0EB0 (size: 0x108)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose_3;                          // 0x0FB8 (size: 0x108)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_7;                        // 0x10C0 (size: 0x48)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_6;                        // 0x1108 (size: 0x48)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_9;                            // 0x1150 (size: 0x28)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_8;                            // 0x1178 (size: 0x28)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_11;                         // 0x11A0 (size: 0x48)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_10;                         // 0x11E8 (size: 0x48)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_9;                          // 0x1230 (size: 0x48)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_8;                          // 0x1278 (size: 0x48)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_5;                        // 0x12C0 (size: 0x48)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_7;                            // 0x1308 (size: 0x28)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_6;                            // 0x1330 (size: 0x28)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_4;                        // 0x1358 (size: 0x48)
    FAnimNode_LinkedInputPose AnimGraphNode_LinkedInputPose;                          // 0x13A0 (size: 0xC8)
    FAnimNode_Root AnimGraphNode_Root_1;                                              // 0x1468 (size: 0x20)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose_2;                          // 0x1488 (size: 0x108)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_3;                        // 0x1590 (size: 0x48)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_5;                            // 0x15D8 (size: 0x28)
    FAnimNode_Slot AnimGraphNode_Slot_3;                                              // 0x1600 (size: 0x48)
    FAnimNode_Slot AnimGraphNode_Slot_2;                                              // 0x1648 (size: 0x48)
    FAnimNode_LayeredBoneBlend AnimGraphNode_LayeredBoneBlend;                        // 0x1690 (size: 0xE0)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_4;                            // 0x1770 (size: 0x28)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_3;                            // 0x1798 (size: 0x28)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_2;                            // 0x17C0 (size: 0x28)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose_1;                          // 0x17E8 (size: 0x108)
    FAnimNode_Slot AnimGraphNode_Slot_1;                                              // 0x18F0 (size: 0x48)
    FAnimNode_ConvertLocalToComponentSpace AnimGraphNode_LocalToComponentSpace;       // 0x1938 (size: 0x20)
    FAnimNode_ModifyBone AnimGraphNode_ModifyBone_2;                                  // 0x1958 (size: 0x128)
    FAnimNode_ModifyBone AnimGraphNode_ModifyBone_1;                                  // 0x1A80 (size: 0x128)
    FAnimNode_ModifyBone AnimGraphNode_ModifyBone;                                    // 0x1BA8 (size: 0x128)
    FAnimNode_ConvertComponentToLocalSpace AnimGraphNode_ComponentToLocalSpace;       // 0x1CD0 (size: 0x20)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose_1;                            // 0x1CF0 (size: 0x28)
    FAnimNode_SaveCachedPose AnimGraphNode_SaveCachedPose;                            // 0x1D18 (size: 0x108)
    FAnimNode_UseCachedPose AnimGraphNode_UseCachedPose;                              // 0x1E20 (size: 0x28)
    FAnimNode_Root AnimGraphNode_Root;                                                // 0x1E48 (size: 0x20)
    FAnimNode_LinkedAnimLayer AnimGraphNode_LinkedAnimLayer_2;                        // 0x1E68 (size: 0xC8)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_13;                     // 0x1F30 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_12;                     // 0x1F58 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_11;                     // 0x1F80 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_10;                     // 0x1FA8 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_9;                      // 0x1FD0 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_8;                      // 0x1FF8 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_7;                      // 0x2020 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_6;                      // 0x2048 (size: 0x28)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_7;                          // 0x2070 (size: 0x48)
    FAnimNode_StateResult AnimGraphNode_StateResult_9;                                // 0x20B8 (size: 0x20)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_6;                          // 0x20D8 (size: 0x48)
    FAnimNode_StateResult AnimGraphNode_StateResult_8;                                // 0x2120 (size: 0x20)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_5;                          // 0x2140 (size: 0x48)
    FAnimNode_StateResult AnimGraphNode_StateResult_7;                                // 0x2188 (size: 0x20)
    FAnimNode_StateMachine AnimGraphNode_StateMachine_2;                              // 0x21A8 (size: 0xC8)
    FAnimNode_StateResult AnimGraphNode_StateResult_6;                                // 0x2270 (size: 0x20)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_5;                      // 0x2290 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_4;                      // 0x22B8 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_3;                      // 0x22E0 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_2;                      // 0x2308 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult_1;                      // 0x2330 (size: 0x28)
    FAnimNode_TransitionResult AnimGraphNode_TransitionResult;                        // 0x2358 (size: 0x28)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_4;                          // 0x2380 (size: 0x48)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_2;                        // 0x23C8 (size: 0x48)
    FAnimNode_BlendSpacePlayer AnimGraphNode_BlendSpacePlayer_2;                      // 0x2410 (size: 0x70)
    FAnimNode_StateResult AnimGraphNode_StateResult_5;                                // 0x2480 (size: 0x20)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_3;                          // 0x24A0 (size: 0x48)
    FAnimNode_StateResult AnimGraphNode_StateResult_4;                                // 0x24E8 (size: 0x20)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_2;                          // 0x2508 (size: 0x48)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer_1;                          // 0x2550 (size: 0x48)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool_1;                        // 0x2598 (size: 0x48)
    FAnimNode_StateResult AnimGraphNode_StateResult_3;                                // 0x25E0 (size: 0x20)
    FAnimNode_BlendListByBool AnimGraphNode_BlendListByBool;                          // 0x2600 (size: 0x48)
    FAnimNode_BlendSpacePlayer AnimGraphNode_BlendSpacePlayer_1;                      // 0x2648 (size: 0x70)
    FAnimNode_BlendSpacePlayer AnimGraphNode_BlendSpacePlayer;                        // 0x26B8 (size: 0x70)
    FAnimNode_StateResult AnimGraphNode_StateResult_2;                                // 0x2728 (size: 0x20)
    FAnimNode_SequencePlayer AnimGraphNode_SequencePlayer;                            // 0x2748 (size: 0x48)
    FAnimNode_StateResult AnimGraphNode_StateResult_1;                                // 0x2790 (size: 0x20)
    FAnimNode_StateMachine AnimGraphNode_StateMachine_1;                              // 0x27B0 (size: 0xC8)
    FAnimNode_StateResult AnimGraphNode_StateResult;                                  // 0x2878 (size: 0x20)
    FAnimNode_StateMachine AnimGraphNode_StateMachine;                                // 0x2898 (size: 0xC8)
    FAnimNode_Slot AnimGraphNode_Slot;                                                // 0x2960 (size: 0x48)
    FAnimNode_LinkedAnimLayer AnimGraphNode_LinkedAnimLayer_1;                        // 0x29A8 (size: 0xC8)
    FAnimNode_LinkedAnimLayer AnimGraphNode_LinkedAnimLayer;                          // 0x2A70 (size: 0xC8)
    bool K2Node_PropertyAccess_13;                                                    // 0x2B38 (size: 0x1)
    bool K2Node_PropertyAccess_12;                                                    // 0x2B39 (size: 0x1)
    FRotator K2Node_PropertyAccess_11;                                                // 0x2B40 (size: 0x18)
    FVector K2Node_PropertyAccess_10;                                                 // 0x2B58 (size: 0x18)
    FVector K2Node_PropertyAccess_9;                                                  // 0x2B70 (size: 0x18)
    FTransform K2Node_PropertyAccess_8;                                               // 0x2B90 (size: 0x60)
    bool K2Node_PropertyAccess_7;                                                     // 0x2BF0 (size: 0x1)
    bool K2Node_PropertyAccess_6;                                                     // 0x2BF1 (size: 0x1)
    class APalWeaponBase* K2Node_PropertyAccess_5;                                    // 0x2BF8 (size: 0x8)
    bool K2Node_PropertyAccess_4;                                                     // 0x2C00 (size: 0x1)
    bool K2Node_PropertyAccess_3;                                                     // 0x2C01 (size: 0x1)
    bool K2Node_PropertyAccess_2;                                                     // 0x2C02 (size: 0x1)
    FVector K2Node_PropertyAccess_1;                                                  // 0x2C08 (size: 0x18)
    FWeaponAnimationInfo K2Node_PropertyAccess;                                       // 0x2C20 (size: 0x258)
    FWeaponAnimationInfo WeaponInfo;                                                  // 0x2E78 (size: 0x258)
    FVector2D VelocityXY;                                                             // 0x30D0 (size: 0x10)
    double Speed;                                                                     // 0x30E0 (size: 0x8)
    bool IsAim;                                                                       // 0x30E8 (size: 0x1)
    bool IsReloading;                                                                 // 0x30E9 (size: 0x1)
    bool isCrouch;                                                                    // 0x30EA (size: 0x1)
    FRotator AimRotatorForSpine;                                                      // 0x30F0 (size: 0x18)
    bool IsEndJump;                                                                   // 0x3108 (size: 0x1)
    bool IsValidSprintAnimation;                                                      // 0x3109 (size: 0x1)
    bool IsSprint;                                                                    // 0x310A (size: 0x1)
    FTransform LeftHandTransform;                                                     // 0x3110 (size: 0x60)
    bool isAttachLeftHand;                                                            // 0x3170 (size: 0x1)
    class UPalShooterComponent* TSCache_ShooterComponent;                             // 0x3178 (size: 0x8)
    class APalCharacter* TSCache_OwnerPalCharacter;                                   // 0x3180 (size: 0x8)

    void NPC_HairClothLayer(FPoseLink InPose, FPoseLink& NPC_HairClothLayer);
    void LeftHandIK(FPoseLink InPose_LeftHand, FPoseLink& LeftHandIK);
    void WeaponUpper(FPoseLink InPose, FPoseLink& WeaponUpper);
    void AnimGraph(FPoseLink& AnimGraph);
    void BlueprintThreadSafeUpdateAnimation(float DeltaTime);
    void ShooterComponentUpdate(class UPalShooterComponent* ShooterComponent);
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_0D482E0C4B2E4E7CD091E386E53618A7();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_40C8EDE3400634534A504B80F766E208();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_3AE6580A4F970316C15CF69E11CE9615();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_BBD8BB9A4AAC9FE30FB9758FBD35CF09();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_BlendListByBool_E2DE616E480579F7354F33B1777A4358();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_BlendListByBool_F63282324F16651B07F04EA37B13D648();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_8536992D4A36125389B06C90F08A99B2();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_BlendListByBool_FA0E6E324CA7134F3022AA94B20262ED();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_BlendSpacePlayer_ECEA17A54981985346E400AE295C30FF();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_A843A5B240417E340E569DA258225C81();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_SequencePlayer_103905184AD9AADFC2AC7783DC8F943D();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_BlendListByBool_F4C92C35456A21C307270A83D6D219A6();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_98F8247B476FFB0446F91DB7328341FA();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_B09EDEC94382438CC2EA92A0E18A09D7();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_A9D4C35A4750D9C872FF0F8E72859E1D();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_F009816844CF3DF7CEFF7DAA17E020BA();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_1D93E8984AE04BDD9AC072AC8F1B4CC6();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_FB87F47D45ADB262044FA6BC9B050E13();
    void EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_NPC_Base_AnimGraphNode_TransitionResult_41047BF041CF74296033DFA993D3480E();
    void BlueprintBeginPlay();
    void ExecuteUbergraph_ABP_NPC_Base(int32 EntryPoint);
}; // Size: 0x3188

#endif
