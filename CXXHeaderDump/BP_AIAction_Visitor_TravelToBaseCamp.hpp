#ifndef UE4SS_SDK_BP_AIAction_Visitor_TravelToBaseCamp_HPP
#define UE4SS_SDK_BP_AIAction_Visitor_TravelToBaseCamp_HPP

class UBP_AIAction_Visitor_TravelToBaseCamp_C : public UBP_AIAction_CanCombatBase_C
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0158 (size: 0x8)
    FVector BaseCampLocation;                                                         // 0x0160 (size: 0x18)
    bool DashMode;                                                                    // 0x0178 (size: 0x1)
    FBP_AIAction_Visitor_TravelToBaseCamp_COnArrivedTargetPoint OnArrivedTargetPoint; // 0x0180 (size: 0x10)
    void OnArrivedTargetPoint();
    FVector PrevLocation;                                                             // 0x0190 (size: 0x18)
    double StuckElapsedTime;                                                          // 0x01A8 (size: 0x8)
    FBP_AIAction_Visitor_TravelToBaseCamp_COnStuck OnStuck;                           // 0x01B0 (size: 0x10)
    void OnStuck();
    bool IsStuck;                                                                     // 0x01C0 (size: 0x1)

    void Tick Move to Base Camp(class AActor* ControlledPawn, float DeltaTime);
    void SoundEvent(FVector EmitLocation);
    void Fun_Damage_AIResponse(FPalDamageResult DamageResult);
    void SightCheckAndResponse(EPalAIResponseType Current, bool OverrideIsDamage, bool& ChangeNextAction);
    void ActionStart(class APawn* ControlledPawn);
    void ActionTick(class APawn* ControlledPawn, float DeltaSeconds);
    void ActionAbort(class APawn* ControlledPawn);
    void ActionPause(class APawn* ControlledPawn);
    void ActionFinished(class APawn* ControlledPawn, TEnumAsByte<EPawnActionResult::Type> WithResult);
    void ActionResume(class APawn* ControlledPawn);
    void ExecuteUbergraph_BP_AIAction_Visitor_TravelToBaseCamp(int32 EntryPoint);
    void OnStuck__DelegateSignature();
    void OnArrivedTargetPoint__DelegateSignature();
}; // Size: 0x1C1

#endif
