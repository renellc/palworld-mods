#ifndef UE4SS_SDK_WBP_DyingFriendLoupe_HPP
#define UE4SS_SDK_WBP_DyingFriendLoupe_HPP

class UWBP_DyingFriendLoupe_C : public UWBP_LoupeBase_C
{
    class UWBP_GuildMemberGauge_C* WBP_GuildMemberGauge;                              // 0x0488 (size: 0x8)
    class UPalIndividualCharacterHandle* targetHandle;                                // 0x0490 (size: 0x8)
    class UBP_Status_Dying_C* Dying Status;                                           // 0x0498 (size: 0x8)
    FPalInstanceID SyncId;                                                            // 0x04A0 (size: 0x30)

    void OnSyncIndividualParameter(FPalInstanceID InstanceId);
    void Setup(class UBP_Status_Dying_C* DyingStatus);
    void SetFinalWidgetOpacity(double calcedOpacity);
    bool IsEnableLoupe();
    void GetTargetWidgetSize(FVector2D& outVector);
    void GetLoupeWidgetSize(FVector2D& widgetSize);
    void GetTranslationTarget(class UWidget*& Widget);
    void UpdateArrowImageAngle(double newAngle);
    void CalcScreenPosition();
    void GetTargetWorldLocation(FVector& outVector);
}; // Size: 0x4D0

#endif
