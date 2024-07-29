---@meta

---@class AOnlineBeacon : AActor
---@field BeaconConnectionInitialTimeout float
---@field BeaconConnectionTimeout float
---@field NetDriver UNetDriver
AOnlineBeacon = {}

---@return AOnlineBeacon
function AOnlineBeacon:get() end



---@class AOnlineBeaconClient : AOnlineBeacon
---@field BeaconOwner AOnlineBeaconHostObject
---@field BeaconConnection UNetConnection
---@field ConnectionState EBeaconConnectionState
AOnlineBeaconClient = {}

---@return AOnlineBeaconClient
function AOnlineBeaconClient:get() end

function AOnlineBeaconClient:ClientOnConnected() end


---@class AOnlineBeaconHost : AOnlineBeacon
---@field ListenPort int32
---@field bAuthRequired boolean
---@field MaxAuthTokenSize uint32
---@field ClientActors TArray<AOnlineBeaconClient>
AOnlineBeaconHost = {}

---@return AOnlineBeaconHost
function AOnlineBeaconHost:get() end



---@class AOnlineBeaconHostObject : AActor
---@field BeaconTypeName FString
---@field ClientBeaconActorClass TSubclassOf<AOnlineBeaconClient>
---@field ClientActors TArray<AOnlineBeaconClient>
AOnlineBeaconHostObject = {}

---@return AOnlineBeaconHostObject
function AOnlineBeaconHostObject:get() end



---@class APartyBeaconClient : AOnlineBeaconClient
---@field DestSessionId FString
---@field PendingReservation FPartyReservation
---@field RequestType EClientRequestType
---@field bPendingReservationSent boolean
---@field bCancelReservation boolean
APartyBeaconClient = {}

---@return APartyBeaconClient
function APartyBeaconClient:get() end

---@param SessionId FString
---@param ReservationUpdate FPartyReservation
function APartyBeaconClient:ServerUpdateReservationRequest(SessionId, ReservationUpdate) end
---@param SessionId FString
---@param Reservation FPartyReservation
function APartyBeaconClient:ServerReservationRequest(SessionId, Reservation) end
---@param SessionId FString
---@param ReservationUpdate FPartyReservation
function APartyBeaconClient:ServerRemoveMemberFromReservationRequest(SessionId, ReservationUpdate) end
---@param PartyLeader FUniqueNetIdRepl
function APartyBeaconClient:ServerCancelReservationRequest(PartyLeader) end
---@param SessionId FString
---@param Reservation FPartyReservation
function APartyBeaconClient:ServerAddOrUpdateReservationRequest(SessionId, Reservation) end
---@param NumRemainingReservations int32
function APartyBeaconClient:ClientSendReservationUpdates(NumRemainingReservations) end
function APartyBeaconClient:ClientSendReservationFull() end
---@param ReservationResponse EPartyReservationResult::Type
function APartyBeaconClient:ClientReservationResponse(ReservationResponse) end
---@param ReservationResponse EPartyReservationResult::Type
function APartyBeaconClient:ClientCancelReservationResponse(ReservationResponse) end


---@class APartyBeaconHost : AOnlineBeaconHostObject
---@field State UPartyBeaconState
---@field bLogoutOnSessionTimeout boolean
---@field SessionTimeoutSecs float
---@field TravelSessionTimeoutSecs float
APartyBeaconHost = {}

---@return APartyBeaconHost
function APartyBeaconHost:get() end



---@class ASpectatorBeaconClient : AOnlineBeaconClient
---@field DestSessionId FString
---@field PendingReservation FSpectatorReservation
---@field RequestType ESpectatorClientRequestType
---@field bPendingReservationSent boolean
---@field bCancelReservation boolean
ASpectatorBeaconClient = {}

---@return ASpectatorBeaconClient
function ASpectatorBeaconClient:get() end

---@param SessionId FString
---@param Reservation FSpectatorReservation
function ASpectatorBeaconClient:ServerReservationRequest(SessionId, Reservation) end
---@param Spectator FUniqueNetIdRepl
function ASpectatorBeaconClient:ServerCancelReservationRequest(Spectator) end
---@param NumRemainingReservations int32
function ASpectatorBeaconClient:ClientSendReservationUpdates(NumRemainingReservations) end
function ASpectatorBeaconClient:ClientSendReservationFull() end
---@param ReservationResponse ESpectatorReservationResult::Type
function ASpectatorBeaconClient:ClientReservationResponse(ReservationResponse) end
---@param ReservationResponse ESpectatorReservationResult::Type
function ASpectatorBeaconClient:ClientCancelReservationResponse(ReservationResponse) end


---@class ASpectatorBeaconHost : AOnlineBeaconHostObject
---@field State USpectatorBeaconState
---@field bLogoutOnSessionTimeout boolean
---@field SessionTimeoutSecs float
---@field TravelSessionTimeoutSecs float
ASpectatorBeaconHost = {}

---@return ASpectatorBeaconHost
function ASpectatorBeaconHost:get() end



---@class ATestBeaconClient : AOnlineBeaconClient
ATestBeaconClient = {}

---@return ATestBeaconClient
function ATestBeaconClient:get() end

function ATestBeaconClient:ServerPong() end
function ATestBeaconClient:ClientPing() end


---@class ATestBeaconHost : AOnlineBeaconHostObject
ATestBeaconHost = {}

---@return ATestBeaconHost
function ATestBeaconHost:get() end


---@class FBlueprintSessionResult
FBlueprintSessionResult = {}

---@return FBlueprintSessionResult
function FBlueprintSessionResult:get() end


---@class FInAppPurchaseProductInfo2
---@field Identifier FString
---@field TransactionIdentifier FString
---@field DisplayName FString
---@field DisplayDescription FString
---@field DisplayPrice FString
---@field RawPrice float
---@field CurrencyCode FString
---@field CurrencySymbol FString
---@field DecimalSeparator FString
---@field GroupingSeparator FString
---@field ReceiptData FString
---@field DynamicFields TMap<FString, FString>
FInAppPurchaseProductInfo2 = {}

---@return FInAppPurchaseProductInfo2
function FInAppPurchaseProductInfo2:get() end



---@class FInAppPurchaseProductRequest2
---@field ProductIdentifier FString
---@field bIsConsumable boolean
FInAppPurchaseProductRequest2 = {}

---@return FInAppPurchaseProductRequest2
function FInAppPurchaseProductRequest2:get() end



---@class FInAppPurchaseReceiptInfo2
---@field ItemName FString
---@field ItemId FString
---@field ValidationInfo FString
FInAppPurchaseReceiptInfo2 = {}

---@return FInAppPurchaseReceiptInfo2
function FInAppPurchaseReceiptInfo2:get() end



---@class FInAppPurchaseRestoreInfo2
---@field ItemName FString
---@field ItemId FString
---@field ValidationInfo FString
FInAppPurchaseRestoreInfo2 = {}

---@return FInAppPurchaseRestoreInfo2
function FInAppPurchaseRestoreInfo2:get() end



---@class FOnlineProxyStoreOffer
---@field OfferId FString
---@field Title FText
---@field Description FText
---@field LongDescription FText
---@field RegularPriceText FText
---@field RegularPrice int32
---@field PriceText FText
---@field NumericPrice int32
---@field CurrencyCode FString
---@field ReleaseDate FDateTime
---@field ExpirationDate FDateTime
---@field DiscountType EOnlineProxyStoreOfferDiscountType
---@field DynamicFields TMap<FString, FString>
FOnlineProxyStoreOffer = {}

---@return FOnlineProxyStoreOffer
function FOnlineProxyStoreOffer:get() end



---@class FPIELoginSettingsInternal
---@field ID FString
---@field Token FString
---@field Type FString
---@field TokenBytes TArray<uint8>
FPIELoginSettingsInternal = {}

---@return FPIELoginSettingsInternal
function FPIELoginSettingsInternal:get() end



---@class FPartyBeaconCrossplayPlatformMapping
---@field PlatformName FString
---@field PlatformType FString
FPartyBeaconCrossplayPlatformMapping = {}

---@return FPartyBeaconCrossplayPlatformMapping
function FPartyBeaconCrossplayPlatformMapping:get() end



---@class FPartyReservation
---@field TeamNum int32
---@field PartyLeader FUniqueNetIdRepl
---@field PartyMembers TArray<FPlayerReservation>
---@field RemovedPartyMembers TArray<FPlayerReservation>
FPartyReservation = {}

---@return FPartyReservation
function FPartyReservation:get() end



---@class FPlayerReservation
---@field UniqueId FUniqueNetIdRepl
---@field ValidationStr FString
---@field Platform FString
---@field bAllowCrossplay boolean
---@field ElapsedTime float
FPlayerReservation = {}

---@return FPlayerReservation
function FPlayerReservation:get() end



---@class FSpectatorReservation
---@field SpectatorId FUniqueNetIdRepl
---@field Spectator FPlayerReservation
FSpectatorReservation = {}

---@return FSpectatorReservation
function FSpectatorReservation:get() end



---@class UAchievementBlueprintLibrary : UBlueprintFunctionLibrary
UAchievementBlueprintLibrary = {}

---@return UAchievementBlueprintLibrary
function UAchievementBlueprintLibrary:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementId FName
---@param bFoundID boolean
---@param Progress float
function UAchievementBlueprintLibrary:GetCachedAchievementProgress(WorldContextObject, PlayerController, AchievementId, bFoundID, Progress) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementId FName
---@param bFoundID boolean
---@param Title FText
---@param LockedDescription FText
---@param UnlockedDescription FText
---@param bHidden boolean
function UAchievementBlueprintLibrary:GetCachedAchievementDescription(WorldContextObject, PlayerController, AchievementId, bFoundID, Title, LockedDescription, UnlockedDescription, bHidden) end


---@class UAchievementQueryCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FAchievementQueryCallbackProxyOnSuccess
---@field OnFailure FAchievementQueryCallbackProxyOnFailure
UAchievementQueryCallbackProxy = {}

---@return UAchievementQueryCallbackProxy
function UAchievementQueryCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@return UAchievementQueryCallbackProxy
function UAchievementQueryCallbackProxy:CacheAchievements(WorldContextObject, PlayerController) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@return UAchievementQueryCallbackProxy
function UAchievementQueryCallbackProxy:CacheAchievementDescriptions(WorldContextObject, PlayerController) end


---@class UAchievementWriteCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FAchievementWriteCallbackProxyOnSuccess
---@field OnFailure FAchievementWriteCallbackProxyOnFailure
UAchievementWriteCallbackProxy = {}

---@return UAchievementWriteCallbackProxy
function UAchievementWriteCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementName FName
---@param Progress float
---@param UserTag int32
---@return UAchievementWriteCallbackProxy
function UAchievementWriteCallbackProxy:WriteAchievementProgress(WorldContextObject, PlayerController, AchievementName, Progress, UserTag) end


---@class UConnectionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FConnectionCallbackProxyOnSuccess
---@field OnFailure FConnectionCallbackProxyOnFailure
UConnectionCallbackProxy = {}

---@return UConnectionCallbackProxy
function UConnectionCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@return UConnectionCallbackProxy
function UConnectionCallbackProxy:ConnectToService(WorldContextObject, PlayerController) end


---@class UCreateSessionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FCreateSessionCallbackProxyOnSuccess
---@field OnFailure FCreateSessionCallbackProxyOnFailure
UCreateSessionCallbackProxy = {}

---@return UCreateSessionCallbackProxy
function UCreateSessionCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param PublicConnections int32
---@param bUseLAN boolean
---@return UCreateSessionCallbackProxy
function UCreateSessionCallbackProxy:CreateSession(WorldContextObject, PlayerController, PublicConnections, bUseLAN) end


---@class UDestroySessionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FDestroySessionCallbackProxyOnSuccess
---@field OnFailure FDestroySessionCallbackProxyOnFailure
UDestroySessionCallbackProxy = {}

---@return UDestroySessionCallbackProxy
function UDestroySessionCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@return UDestroySessionCallbackProxy
function UDestroySessionCallbackProxy:DestroySession(WorldContextObject, PlayerController) end


---@class UEndMatchCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FEndMatchCallbackProxyOnSuccess
---@field OnFailure FEndMatchCallbackProxyOnFailure
UEndMatchCallbackProxy = {}

---@return UEndMatchCallbackProxy
function UEndMatchCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchActor TScriptInterface<ITurnBasedMatchInterface>
---@param MatchID FString
---@param LocalPlayerOutcome EMPMatchOutcome::Type
---@param OtherPlayersOutcome EMPMatchOutcome::Type
---@return UEndMatchCallbackProxy
function UEndMatchCallbackProxy:EndMatch(WorldContextObject, PlayerController, MatchActor, MatchID, LocalPlayerOutcome, OtherPlayersOutcome) end


---@class UEndTurnCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FEndTurnCallbackProxyOnSuccess
---@field OnFailure FEndTurnCallbackProxyOnFailure
UEndTurnCallbackProxy = {}

---@return UEndTurnCallbackProxy
function UEndTurnCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param TurnBasedMatchInterface TScriptInterface<ITurnBasedMatchInterface>
---@return UEndTurnCallbackProxy
function UEndTurnCallbackProxy:EndTurn(WorldContextObject, PlayerController, MatchID, TurnBasedMatchInterface) end


---@class UFindSessionsCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FFindSessionsCallbackProxyOnSuccess
---@field OnFailure FFindSessionsCallbackProxyOnFailure
UFindSessionsCallbackProxy = {}

---@return UFindSessionsCallbackProxy
function UFindSessionsCallbackProxy:get() end

---@param Result FBlueprintSessionResult
---@return FString
function UFindSessionsCallbackProxy:GetServerName(Result) end
---@param Result FBlueprintSessionResult
---@return int32
function UFindSessionsCallbackProxy:GetPingInMs(Result) end
---@param Result FBlueprintSessionResult
---@return int32
function UFindSessionsCallbackProxy:GetMaxPlayers(Result) end
---@param Result FBlueprintSessionResult
---@return int32
function UFindSessionsCallbackProxy:GetCurrentPlayers(Result) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MaxResults int32
---@param bUseLAN boolean
---@return UFindSessionsCallbackProxy
function UFindSessionsCallbackProxy:FindSessions(WorldContextObject, PlayerController, MaxResults, bUseLAN) end


---@class UFindTurnBasedMatchCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FFindTurnBasedMatchCallbackProxyOnSuccess
---@field OnFailure FFindTurnBasedMatchCallbackProxyOnFailure
UFindTurnBasedMatchCallbackProxy = {}

---@return UFindTurnBasedMatchCallbackProxy
function UFindTurnBasedMatchCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchActor TScriptInterface<ITurnBasedMatchInterface>
---@param MinPlayers int32
---@param MaxPlayers int32
---@param PlayerGroup int32
---@param ShowExistingMatches boolean
---@return UFindTurnBasedMatchCallbackProxy
function UFindTurnBasedMatchCallbackProxy:FindTurnBasedMatch(WorldContextObject, PlayerController, MatchActor, MinPlayers, MaxPlayers, PlayerGroup, ShowExistingMatches) end


---@class UInAppPurchaseCallbackProxy2 : UObject
---@field OnSuccess FInAppPurchaseCallbackProxy2OnSuccess
---@field OnFailure FInAppPurchaseCallbackProxy2OnFailure
UInAppPurchaseCallbackProxy2 = {}

---@return UInAppPurchaseCallbackProxy2
function UInAppPurchaseCallbackProxy2:get() end

---@param PlayerController APlayerController
---@return UInAppPurchaseCallbackProxy2
function UInAppPurchaseCallbackProxy2:CreateProxyObjectForInAppPurchaseUnprocessedPurchases(PlayerController) end
---@param PlayerController APlayerController
---@return UInAppPurchaseCallbackProxy2
function UInAppPurchaseCallbackProxy2:CreateProxyObjectForInAppPurchaseQueryOwned(PlayerController) end
---@param PlayerController APlayerController
---@param ProductRequest FInAppPurchaseProductRequest2
---@return UInAppPurchaseCallbackProxy2
function UInAppPurchaseCallbackProxy2:CreateProxyObjectForInAppPurchase(PlayerController, ProductRequest) end


---@class UInAppPurchaseQueryCallbackProxy2 : UObject
---@field OnSuccess FInAppPurchaseQueryCallbackProxy2OnSuccess
---@field OnFailure FInAppPurchaseQueryCallbackProxy2OnFailure
UInAppPurchaseQueryCallbackProxy2 = {}

---@return UInAppPurchaseQueryCallbackProxy2
function UInAppPurchaseQueryCallbackProxy2:get() end

---@param PlayerController APlayerController
---@param ProductIdentifiers TArray<FString>
---@return UInAppPurchaseQueryCallbackProxy2
function UInAppPurchaseQueryCallbackProxy2:CreateProxyObjectForInAppPurchaseQuery(PlayerController, ProductIdentifiers) end


---@class UInAppPurchaseRestoreCallbackProxy2 : UObject
---@field OnSuccess FInAppPurchaseRestoreCallbackProxy2OnSuccess
---@field OnFailure FInAppPurchaseRestoreCallbackProxy2OnFailure
UInAppPurchaseRestoreCallbackProxy2 = {}

---@return UInAppPurchaseRestoreCallbackProxy2
function UInAppPurchaseRestoreCallbackProxy2:get() end

---@param ConsumableProductFlags TArray<FInAppPurchaseProductRequest2>
---@param PlayerController APlayerController
---@return UInAppPurchaseRestoreCallbackProxy2
function UInAppPurchaseRestoreCallbackProxy2:CreateProxyObjectForInAppPurchaseRestore(ConsumableProductFlags, PlayerController) end


---@class UIpConnection : UNetConnection
---@field SocketErrorDisconnectDelay float
UIpConnection = {}

---@return UIpConnection
function UIpConnection:get() end



---@class UIpNetDriver : UNetDriver
---@field LogPortUnreach boolean
---@field AllowPlayerPortUnreach boolean
---@field MaxPortCountToTry uint32
---@field ServerDesiredSocketReceiveBufferBytes uint32
---@field ServerDesiredSocketSendBufferBytes uint32
---@field ClientDesiredSocketReceiveBufferBytes uint32
---@field ClientDesiredSocketSendBufferBytes uint32
---@field MaxSecondsInReceive double
---@field NbPacketsBetweenReceiveTimeTest int32
---@field ResolutionConnectionTimeout float
UIpNetDriver = {}

---@return UIpNetDriver
function UIpNetDriver:get() end



---@class UJoinSessionCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FJoinSessionCallbackProxyOnSuccess
---@field OnFailure FJoinSessionCallbackProxyOnFailure
UJoinSessionCallbackProxy = {}

---@return UJoinSessionCallbackProxy
function UJoinSessionCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param SearchResult FBlueprintSessionResult
---@return UJoinSessionCallbackProxy
function UJoinSessionCallbackProxy:JoinSession(WorldContextObject, PlayerController, SearchResult) end


---@class ULeaderboardBlueprintLibrary : UBlueprintFunctionLibrary
ULeaderboardBlueprintLibrary = {}

---@return ULeaderboardBlueprintLibrary
function ULeaderboardBlueprintLibrary:get() end

---@param PlayerController APlayerController
---@param StatName FName
---@param StatValue int32
---@return boolean
function ULeaderboardBlueprintLibrary:WriteLeaderboardInteger(PlayerController, StatName, StatValue) end


---@class ULeaderboardFlushCallbackProxy : UObject
---@field OnSuccess FLeaderboardFlushCallbackProxyOnSuccess
---@field OnFailure FLeaderboardFlushCallbackProxyOnFailure
ULeaderboardFlushCallbackProxy = {}

---@return ULeaderboardFlushCallbackProxy
function ULeaderboardFlushCallbackProxy:get() end

---@param PlayerController APlayerController
---@param SessionName FName
---@return ULeaderboardFlushCallbackProxy
function ULeaderboardFlushCallbackProxy:CreateProxyObjectForFlush(PlayerController, SessionName) end


---@class ULeaderboardQueryCallbackProxy : UObject
---@field OnSuccess FLeaderboardQueryCallbackProxyOnSuccess
---@field OnFailure FLeaderboardQueryCallbackProxyOnFailure
ULeaderboardQueryCallbackProxy = {}

---@return ULeaderboardQueryCallbackProxy
function ULeaderboardQueryCallbackProxy:get() end

---@param PlayerController APlayerController
---@param StatName FName
---@return ULeaderboardQueryCallbackProxy
function ULeaderboardQueryCallbackProxy:CreateProxyObjectForIntQuery(PlayerController, StatName) end


---@class ULogoutCallbackProxy : UBlueprintAsyncActionBase
---@field OnSuccess FLogoutCallbackProxyOnSuccess
---@field OnFailure FLogoutCallbackProxyOnFailure
ULogoutCallbackProxy = {}

---@return ULogoutCallbackProxy
function ULogoutCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@return ULogoutCallbackProxy
function ULogoutCallbackProxy:Logout(WorldContextObject, PlayerController) end


---@class UOnlineEngineInterfaceImpl : UOnlineEngineInterface
---@field MappedUniqueNetIdTypes TMap<FName, FName>
---@field CompatibleUniqueNetIdTypes TArray<FName>
---@field VoiceSubsystemNameOverride FName
UOnlineEngineInterfaceImpl = {}

---@return UOnlineEngineInterfaceImpl
function UOnlineEngineInterfaceImpl:get() end



---@class UOnlinePIESettings : UDeveloperSettings
---@field bOnlinePIEEnabled boolean
---@field Logins TArray<FPIELoginSettingsInternal>
UOnlinePIESettings = {}

---@return UOnlinePIESettings
function UOnlinePIESettings:get() end



---@class UOnlineServicesEngineInterfaceImpl : UOnlineEngineInterface
UOnlineServicesEngineInterfaceImpl = {}

---@return UOnlineServicesEngineInterfaceImpl
function UOnlineServicesEngineInterfaceImpl:get() end


---@class UOnlineSessionClient : UOnlineSession
---@field bIsFromInvite boolean
---@field bHandlingDisconnect boolean
UOnlineSessionClient = {}

---@return UOnlineSessionClient
function UOnlineSessionClient:get() end



---@class UPartyBeaconState : UObject
---@field SessionName FName
---@field NumConsumedReservations int32
---@field MaxReservations int32
---@field NumTeams int32
---@field NumPlayersPerTeam int32
---@field TeamAssignmentMethod FName
---@field ReservedHostTeamNum int32
---@field ForceTeamNum int32
---@field bRestrictCrossConsole boolean
---@field PlatformCrossplayRestrictions TArray<FString>
---@field PlatformTypeMapping TArray<FPartyBeaconCrossplayPlatformMapping>
---@field bEnableRemovalRequests boolean
---@field Reservations TArray<FPartyReservation>
UPartyBeaconState = {}

---@return UPartyBeaconState
function UPartyBeaconState:get() end



---@class UQuitMatchCallbackProxy : UOnlineBlueprintCallProxyBase
---@field OnSuccess FQuitMatchCallbackProxyOnSuccess
---@field OnFailure FQuitMatchCallbackProxyOnFailure
UQuitMatchCallbackProxy = {}

---@return UQuitMatchCallbackProxy
function UQuitMatchCallbackProxy:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param Outcome EMPMatchOutcome::Type
---@param TurnTimeoutInSeconds int32
---@return UQuitMatchCallbackProxy
function UQuitMatchCallbackProxy:QuitMatch(WorldContextObject, PlayerController, MatchID, Outcome, TurnTimeoutInSeconds) end


---@class UShowLoginUICallbackProxy : UBlueprintAsyncActionBase
---@field OnSuccess FShowLoginUICallbackProxyOnSuccess
---@field OnFailure FShowLoginUICallbackProxyOnFailure
UShowLoginUICallbackProxy = {}

---@return UShowLoginUICallbackProxy
function UShowLoginUICallbackProxy:get() end

---@param WorldContextObject UObject
---@param InPlayerController APlayerController
---@return UShowLoginUICallbackProxy
function UShowLoginUICallbackProxy:ShowExternalLoginUI(WorldContextObject, InPlayerController) end


---@class USpectatorBeaconState : UObject
---@field SessionName FName
---@field NumConsumedReservations int32
---@field MaxReservations int32
---@field bRestrictCrossConsole boolean
---@field Reservations TArray<FSpectatorReservation>
USpectatorBeaconState = {}

---@return USpectatorBeaconState
function USpectatorBeaconState:get() end



---@class UTurnBasedBlueprintLibrary : UBlueprintFunctionLibrary
UTurnBasedBlueprintLibrary = {}

---@return UTurnBasedBlueprintLibrary
function UTurnBasedBlueprintLibrary:get() end

---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param Object UObject
function UTurnBasedBlueprintLibrary:RegisterTurnBasedMatchInterfaceObject(WorldContextObject, PlayerController, Object) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param PlayerIndex int32
---@param PlayerDisplayName FString
function UTurnBasedBlueprintLibrary:GetPlayerDisplayName(WorldContextObject, PlayerController, MatchID, PlayerIndex, PlayerDisplayName) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param PlayerIndex int32
function UTurnBasedBlueprintLibrary:GetMyPlayerIndex(WorldContextObject, PlayerController, MatchID, PlayerIndex) end
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param MatchID FString
---@param bIsMyTurn boolean
function UTurnBasedBlueprintLibrary:GetIsMyTurn(WorldContextObject, PlayerController, MatchID, bIsMyTurn) end


---@class UVoipListenerSynthComponent : USynthComponent
UVoipListenerSynthComponent = {}

---@return UVoipListenerSynthComponent
function UVoipListenerSynthComponent:get() end

---@return boolean
function UVoipListenerSynthComponent:IsIdling() end


