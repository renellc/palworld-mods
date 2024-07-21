#ifndef UE4SS_SDK_NiagaraUIRenderer_HPP
#define UE4SS_SDK_NiagaraUIRenderer_HPP

class ANiagaraUIActor : public AActor
{
}; // Size: 0x290

class UNiagaraSystemWidget : public UWidget
{
    class UNiagaraSystem* NiagaraSystemReference;                                     // 0x0150 (size: 0x8)
    TMap<class UMaterialInterface*, class UMaterialInterface*> MaterialRemapList;     // 0x0158 (size: 0x50)
    bool AutoActivate;                                                                // 0x01A8 (size: 0x1)
    bool TickWhenPaused;                                                              // 0x01A9 (size: 0x1)
    FVector2D DesiredWidgetSize;                                                      // 0x01B0 (size: 0x10)
    bool FakeDepthScale;                                                              // 0x01C0 (size: 0x1)
    float FakeDepthScaleDistance;                                                     // 0x01C4 (size: 0x4)
    bool ShowDebugSystemInWorld;                                                      // 0x01C8 (size: 0x1)
    bool DisableWarnings;                                                             // 0x01C9 (size: 0x1)
    class ANiagaraUIActor* NiagaraActor;                                              // 0x01E0 (size: 0x8)
    class UNiagaraUIComponent* NiagaraComponent;                                      // 0x01E8 (size: 0x8)

    void UpdateTickWhenPaused(bool NewTickWhenPaused);
    void UpdateNiagaraSystemReference(class UNiagaraSystem* NewNiagaraSystem);
    void SetRemapMaterial(class UMaterialInterface* OriginalMaterial, class UMaterialInterface* RemapMaterial);
    void SetDesiredWidgetSize(FVector2D NewDesiredSize);
    class UMaterialInterface* GetRemapMaterial(class UMaterialInterface* OriginalMaterial);
    class UNiagaraUIComponent* GetNiagaraComponent();
    void DeactivateSystem();
    void ActivateSystem(bool Reset);
}; // Size: 0x1F0

class UNiagaraUIComponent : public UNiagaraComponent
{
}; // Size: 0x7E0

#endif
