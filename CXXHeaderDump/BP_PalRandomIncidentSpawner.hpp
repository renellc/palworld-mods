#ifndef UE4SS_SDK_BP_PalRandomIncidentSpawner_HPP
#define UE4SS_SDK_BP_PalRandomIncidentSpawner_HPP

class ABP_PalRandomIncidentSpawner_C : public APalRandomIncidentSpawnerBase
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x03C0 (size: 0x8)
    class UStaticMeshComponent* StaticMesh;                                           // 0x03C8 (size: 0x8)
    class USphereComponent* EndCollision;                                             // 0x03D0 (size: 0x8)
    class USphereComponent* ActionCollision;                                          // 0x03D8 (size: 0x8)
    class USphereComponent* ExclusionCollision;                                       // 0x03E0 (size: 0x8)
    class USphereComponent* SpawnCollision;                                           // 0x03E8 (size: 0x8)
    class USceneComponent* DefaultSceneRoot;                                          // 0x03F0 (size: 0x8)
    class UBP_PalIncidentNotifyListener_C* IncidentNotifyListener;                    // 0x03F8 (size: 0x8)
    TMap<class FName, class FF_NPC_PathWalkArray> WalkPathList;                       // 0x0400 (size: 0x50)
    bool DisplayDebugArea;                                                            // 0x0450 (size: 0x1)

    void CreateDebugShape(double Delta);
    void DestroyCollisionComponents();
    void SetAreaRadiuses();
    void AddWalkPath(const FName& PathName, const TArray<class AActor*>& PointList);
    void Create Walk Path(TArray<class AActor*>& PointArray, FF_NPC_PathWalkArray& PathArray);
    void Collect Walk Path Point(class USceneComponent* SceneRoot, TArray<class AActor*>& Actors);
    void EditorSetup_WalkPointRef();
    void ReleaseIncident();
    void SetupIncident(class UPalIncidentBase* Incident, class UPalIncidentDynamicParameterRandom* Parameter);
    void OnIncidentSpawned(class UPalIncidentBase* Incident, class UPalIncidentDynamicParameterRandom* DynamicParameter);
    void OnIncidentNotify(class UPalIncidentNotifyListener* Listener, EPalIncidentState IncidentState, const FPalIncidentNotifyParameter& Parameter);
    void ReceiveTick(float DeltaSeconds);
    void ReceiveBeginPlay();
    void ExecuteUbergraph_BP_PalRandomIncidentSpawner(int32 EntryPoint);
}; // Size: 0x451

#endif
