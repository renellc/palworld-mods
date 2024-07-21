#ifndef UE4SS_SDK_CR_PlayerClavicleAdjust_HPP
#define UE4SS_SDK_CR_PlayerClavicleAdjust_HPP

class UCR_PlayerClavicleAdjust_C : public UControlRig
{
    float ClavicleAdjustFloat;                                                        // 0x0560 (size: 0x4)
    FQuat RigUnit_GetTransform_1_Transform_Rotation;                                  // 0x0570 (size: 0x20)

}; // Size: 0x590

class URigVMMemory_Literal : public URigVMMemoryStorage
{
    FRigElementKey RigVMModel___CollapseNode_RigUnit_GetTransform_1_Item__Const;      // 0x0028 (size: 0xC)
    TEnumAsByte<EBoneGetterSetterMode> RigVMModel___CollapseNode_RigUnit_GetTransform_1_Space__Const; // 0x0034 (size: 0x1)
    uint8 RigVMModel___CollapseNode_RigUnit_GetTransform_1_bInitial__Const;           // 0x0035 (size: 0x1)
    FRigElementKey RigVMModel___CollapseNode_RigUnit_SetTransform_Item__Const;        // 0x0038 (size: 0xC)
    FTransform RigVMModel___CollapseNode_RigUnit_SetTransform_Value__Const;           // 0x0050 (size: 0x60)
    FRotator RigVMModel___CollapseNode_MathQuaternionFromRotator_Rotator__Const;      // 0x00B0 (size: 0x18)
    float RigVMModel___CollapseNode_MathFloatAdd_1_1_B__Const;                        // 0x00C8 (size: 0x4)
    float RigVMModel___CollapseNode_RigUnit_SetTransform_Weight__Const;               // 0x00CC (size: 0x4)
    uint8 RigVMModel___CollapseNode_RigUnit_SetTransform_bPropagateToChildren__Const; // 0x00D0 (size: 0x1)
    FTransform RigVMModel___CollapseNode_RigUnit_SetTransform_1_Value__Const;         // 0x00E0 (size: 0x60)
    FRigElementKey RigVMModel___CollapseNode_1_RigUnit_GetTransform_1_Item__Const;    // 0x0140 (size: 0xC)
    FRigElementKey RigVMModel___CollapseNode_1_RigUnit_SetTransform_Item__Const;      // 0x014C (size: 0xC)
    float RigVMModel___CollapseNode_1_MathFloatMul_B__Const;                          // 0x0158 (size: 0x4)

}; // Size: 0x15C

class URigVMMemory_Work : public URigVMMemoryStorage
{
    FControlRigExecuteContext ExecuteContext_;                                        // 0x0028 (size: 0x38)
    FTransform RigVMModel___CollapseNode_RigUnit_GetTransform_1_Transform;            // 0x0060 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_RigUnit_GetTransform_1_CachedIndex; // 0x00C0 (size: 0x10)
    FQuat RigVMModel___CollapseNode_MathQuaternionFromRotator_Result;                 // 0x00D0 (size: 0x20)
    float RigVMModel___CollapseNode_MathFloatAdd_1_Result;                            // 0x00F0 (size: 0x4)
    FRotator RigVMModel___CollapseNode_MathQuaternionToRotator_Result;                // 0x00F8 (size: 0x18)
    FTransform RigVMModel___CollapseNode_RigUnit_GetTransform_Transform;              // 0x0110 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_RigUnit_GetTransform_CachedIndex; // 0x0170 (size: 0x10)
    FQuat RigVMModel___CollapseNode_MathQuaternionToRotator_Value;                    // 0x0180 (size: 0x20)
    float RigVMModel___CollapseNode_MathFloatAdd_1_A;                                 // 0x01A0 (size: 0x4)
    float RigVMModel___CollapseNode_MathFloatAdd_1_B;                                 // 0x01A4 (size: 0x4)
    float RigVMModel___CollapseNode_MathFloatAdd_1_1_Result;                          // 0x01A8 (size: 0x4)
    float RigVMModel___CollapseNode_MathFloatAdd_1_1_A;                               // 0x01AC (size: 0x4)
    float RigVMModel___CollapseNode_MathFloatAdd_Result;                              // 0x01B0 (size: 0x4)
    float RigVMModel___CollapseNode_MathFloatAdd_A;                                   // 0x01B4 (size: 0x4)
    FRotator RigVMModel___CollapseNode_MathQuaternionFromRotator_Rotator__IO;         // 0x01B8 (size: 0x18)
    FTransform RigVMModel___CollapseNode_RigUnit_SetTransform_Value__IO;              // 0x01D0 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_RigUnit_SetTransform_CachedIndex; // 0x0230 (size: 0x10)
    FTransform RigVMModel___CollapseNode_RigUnit_GetTransform_2_Transform;            // 0x0240 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_RigUnit_GetTransform_2_CachedIndex; // 0x02A0 (size: 0x10)
    FTransform RigVMModel___CollapseNode_RigUnit_SetTransform_1_Value__IO;            // 0x02B0 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_RigUnit_SetTransform_1_CachedIndex; // 0x0310 (size: 0x10)
    FTransform RigVMModel___CollapseNode_1_RigUnit_GetTransform_1_Transform;          // 0x0320 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_1_RigUnit_GetTransform_1_CachedIndex; // 0x0380 (size: 0x10)
    FQuat RigVMModel___CollapseNode_1_MathQuaternionFromRotator_Result;               // 0x0390 (size: 0x20)
    float RigVMModel___CollapseNode_1_MathFloatAdd_1_Result;                          // 0x03B0 (size: 0x4)
    FRotator RigVMModel___CollapseNode_1_MathQuaternionToRotator_Result;              // 0x03B8 (size: 0x18)
    FTransform RigVMModel___CollapseNode_1_RigUnit_GetTransform_Transform;            // 0x03D0 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_1_RigUnit_GetTransform_CachedIndex; // 0x0430 (size: 0x10)
    FQuat RigVMModel___CollapseNode_1_MathQuaternionToRotator_Value;                  // 0x0440 (size: 0x20)
    float RigVMModel___CollapseNode_1_MathFloatAdd_1_A;                               // 0x0460 (size: 0x4)
    float RigVMModel___CollapseNode_1_MathFloatMul_Result;                            // 0x0464 (size: 0x4)
    float RigVMModel___CollapseNode_1_MathFloatMul_A;                                 // 0x0468 (size: 0x4)
    float RigVMModel___CollapseNode_1_MathFloatAdd_1_1_Result;                        // 0x046C (size: 0x4)
    float RigVMModel___CollapseNode_1_MathFloatAdd_1_1_A;                             // 0x0470 (size: 0x4)
    float RigVMModel___CollapseNode_1_MathFloatAdd_Result;                            // 0x0474 (size: 0x4)
    float RigVMModel___CollapseNode_1_MathFloatAdd_A;                                 // 0x0478 (size: 0x4)
    FRotator RigVMModel___CollapseNode_1_MathQuaternionFromRotator_Rotator__IO;       // 0x0480 (size: 0x18)
    FTransform RigVMModel___CollapseNode_1_RigUnit_SetTransform_Value__IO;            // 0x04A0 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_1_RigUnit_SetTransform_CachedIndex; // 0x0500 (size: 0x10)
    FTransform RigVMModel___CollapseNode_1_RigUnit_GetTransform_2_Transform;          // 0x0510 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_1_RigUnit_GetTransform_2_CachedIndex; // 0x0570 (size: 0x10)
    FTransform RigVMModel___CollapseNode_1_RigUnit_SetTransform_1_Value__IO;          // 0x0580 (size: 0x60)
    TArray<FCachedRigElement> RigVMModel___CollapseNode_1_RigUnit_SetTransform_1_CachedIndex; // 0x05E0 (size: 0x10)

}; // Size: 0x5F0

#endif
