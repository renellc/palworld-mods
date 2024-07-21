#ifndef UE4SS_SDK_ModularGameplay_HPP
#define UE4SS_SDK_ModularGameplay_HPP

struct FActorInitStateChangedParams
{
    class AActor* OwningActor;                                                        // 0x0000 (size: 0x8)
    FName FeatureName;                                                                // 0x0008 (size: 0x8)
    class UObject* Implementer;                                                       // 0x0010 (size: 0x8)
    FGameplayTag FeatureState;                                                        // 0x0018 (size: 0x8)

}; // Size: 0x20

class IGameFrameworkInitStateInterface : public IInterface
{

    bool UnregisterInitStateDelegate(FUnregisterInitStateDelegateDelegate Delegate);
    bool RegisterAndCallForInitStateChange(FGameplayTag RequiredState, FRegisterAndCallForInitStateChangeDelegate Delegate, bool bCallImmediately);
    bool HasReachedInitState(FGameplayTag DesiredState);
    FGameplayTag GetInitState();
    FName GetFeatureName();
}; // Size: 0x28

class UControllerComponent : public UGameFrameworkComponent
{
}; // Size: 0xA0

class UGameFrameworkComponent : public UActorComponent
{
}; // Size: 0xA0

class UGameFrameworkComponentManager : public UGameInstanceSubsystem
{

    bool UnregisterClassInitStateDelegate(TSoftClassPtr<AActor> actorClass, FUnregisterClassInitStateDelegateDelegateToRemove DelegateToRemove);
    bool UnregisterActorInitStateDelegate(class AActor* Actor, FUnregisterActorInitStateDelegateDelegateToRemove DelegateToRemove);
    void SendExtensionEvent(class AActor* Receiver, FName EventName, bool bOnlyInGameWorlds);
    void RemoveReceiver(class AActor* Receiver);
    bool RegisterAndCallForClassInitState(TSoftClassPtr<AActor> actorClass, FName FeatureName, FGameplayTag RequiredState, FRegisterAndCallForClassInitStateDelegate Delegate, bool bCallImmediately);
    bool RegisterAndCallForActorInitState(class AActor* Actor, FName FeatureName, FGameplayTag RequiredState, FRegisterAndCallForActorInitStateDelegate Delegate, bool bCallImmediately);
    void AddReceiver(class AActor* Receiver, bool bAddOnlyInGameWorlds);
}; // Size: 0x238

class UGameStateComponent : public UGameFrameworkComponent
{
}; // Size: 0xA0

class UPawnComponent : public UGameFrameworkComponent
{
}; // Size: 0xA0

class UPlayerStateComponent : public UGameFrameworkComponent
{
}; // Size: 0xA0

#endif
