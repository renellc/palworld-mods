#ifndef UE4SS_SDK_WBP_PalItemSlotButtonBase_HPP
#define UE4SS_SDK_WBP_PalItemSlotButtonBase_HPP

class UWBP_PalItemSlotButtonBase_C : public UPalUserWidget
{
    FPointerToUberGraphFrame UberGraphFrame;                                          // 0x0408 (size: 0x8)
    class UCommonButtonBase* My Button;                                               // 0x0410 (size: 0x8)
    class UWBP_PalItemSlotBase_C* MyItemSlotWidget;                                   // 0x0418 (size: 0x8)
    FWBP_PalItemSlotButtonBase_COnClickedButton OnClickedButton;                      // 0x0420 (size: 0x10)
    void OnClickedButton(class UWBP_PalItemSlotButtonBase_C* Widget, EPalItemSlotPressType PressType);
    FWBP_PalItemSlotButtonBase_COnMiddleClickedButton OnMiddleClickedButton;          // 0x0430 (size: 0x10)
    void OnMiddleClickedButton(class UWBP_PalItemSlotButtonBase_C* buttonBase);
    FWBP_PalItemSlotButtonBase_COnRightClickedButton OnRightClickedButton;            // 0x0440 (size: 0x10)
    void OnRightClickedButton(class UWBP_PalItemSlotButtonBase_C* buttonBase, EPalItemSlotPressType PressType);
    FWBP_PalItemSlotButtonBase_COnHoveredButton OnHoveredButton;                      // 0x0450 (size: 0x10)
    void OnHoveredButton(class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnUnhoveredButton OnUnhoveredButton;                  // 0x0460 (size: 0x10)
    void OnUnhoveredButton(class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnFocusedWidget OnFocusedWidget;                      // 0x0470 (size: 0x10)
    void OnFocusedWidget(class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnUnFocusedWidget OnUnFocusedWidget;                  // 0x0480 (size: 0x10)
    void OnUnFocusedWidget(class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnDragged OnDragged;                                  // 0x0490 (size: 0x10)
    void OnDragged(class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnDropped OnDropped;                                  // 0x04A0 (size: 0x10)
    void OnDropped(class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnDropCanceled OnDropCanceled;                        // 0x04B0 (size: 0x10)
    void OnDropCanceled(class UWBP_PalItemSlotButtonBase_C* Widget);
    bool IsEnableDragDrop;                                                            // 0x04C0 (size: 0x1)
    FWBP_PalItemSlotButtonBase_COnLiftedButton OnLiftedButton;                        // 0x04C8 (size: 0x10)
    void OnLiftedButton(int32 LiftNum, class UWBP_PalItemSlotButtonBase_C* Widget);
    FWBP_PalItemSlotButtonBase_COnFinishLiftedButton OnFinishLiftedButton;            // 0x04D8 (size: 0x10)
    void OnFinishLiftedButton(class UWBP_PalItemSlotButtonBase_C* Widget);
    bool IsDisplayingItemInfo;                                                        // 0x04E8 (size: 0x1)
    bool IsDisplayCommonItemInfoWindow;                                               // 0x04E9 (size: 0x1)
    FWBP_PalItemSlotButtonBase_COnSetEmptySlot OnSetEmptySlot;                        // 0x04F0 (size: 0x10)
    void OnSetEmptySlot();
    FWBP_PalItemSlotButtonBase_COnSetValidSlot OnSetValidSlot;                        // 0x0500 (size: 0x10)
    void OnSetValidSlot();
    bool IsEnableSpreadLift;                                                          // 0x0510 (size: 0x1)
    bool IsUsableSlot;                                                                // 0x0511 (size: 0x1)
    FPalDataTableRowName_UIInputAction HalfLiftAction_ForPad;                         // 0x0514 (size: 0x8)
    FPalDataTableRowName_UIInputAction UseAction_ForPad;                              // 0x051C (size: 0x8)
    FPalUIActionBindData HalfLiftActionHandle_ForPad;                                 // 0x0524 (size: 0x4)
    FPalUIActionBindData UseActionHandle_ForPad;                                      // 0x0528 (size: 0x4)
    bool IsSupportedQuickMove;                                                        // 0x052C (size: 0x1)
    bool IsEnableQuickEquip;                                                          // 0x052D (size: 0x1)
    FWBP_PalItemSlotButtonBase_COnNotifyDurability OnNotifyDurability;                // 0x0530 (size: 0x10)
    void OnNotifyDurability(double MaxDurability, double NowDurability, class UWBP_PalItemSlotButtonBase_C* selfWidget);
    FWBP_PalItemSlotButtonBase_COnCorruptionUpdate OnCorruptionUpdate;                // 0x0540 (size: 0x10)
    void OnCorruptionUpdate();
    FWBP_PalItemSlotButtonBase_COnRequestUseItem OnRequestUseItem;                    // 0x0550 (size: 0x10)
    void OnRequestUseItem(class UWBP_PalItemSlotButtonBase_C* Button);
    bool IsShowPrice;                                                                 // 0x0560 (size: 0x1)
    FWBP_PalItemSlotButtonBase_COnTriedEquipSlot OnTriedEquipSlot;                    // 0x0568 (size: 0x10)
    void OnTriedEquipSlot(class UWBP_PalItemSlotButtonBase_C* Widget);

    void GetDisplayDragItemNum(int32& DisplayNum);
    void TryEquipSlot();
    void OnUseOrMoveSlotInput_Pad();
    void OnNotifyDurability_Internal(double MaxDurability, double NowDurability);
    void OnCorruptionUpdate_Internal();
    void OnHalfLiftInput_Pad();
    void UnregisterPadAction();
    void RegisterPadAction();
    void Unbind Button Events();
    void OnFinishLiftedButton_Internal();
    void OnLiftedButton_Internal(int32 LiftedItemNum);
    void OnSetValid_Internal();
    void OnDropCanceled_Internal(class UDragDropOperation* Operation);
    void OnSetEmpty_internal();
    bool OnDrop(FGeometry MyGeometry, FPointerEvent PointerEvent, class UDragDropOperation* Operation);
    void OnDropped_Internal();
    void OnDragged_Internal();
    FEventReply OnPreviewMouseButtonDown(FGeometry MyGeometry, const FPointerEvent& MouseEvent);
    FEventReply OnMouseButtonUp(FGeometry MyGeometry, const FPointerEvent& MouseEvent);
    void OnDragDetected(FGeometry MyGeometry, const FPointerEvent& PointerEvent, class UDragDropOperation*& Operation);
    void Focus();
    FEventReply OnMouseButtonDown(FGeometry MyGeometry, const FPointerEvent& MouseEvent);
    void OnUnhovered_Internal(class UCommonButtonBase* Button);
    void OnHovered_Internal(class UCommonButtonBase* Button);
    void On Right Clicked Internal();
    void OnMiddleClicked_Internal();
    void OnClicked_Internal(class UCommonButtonBase* Button);
    void GetTargetSlot(class UPalItemSlot*& TargetSlot);
    void Bind Button Events();
    void RegisterItemSlotWidget(class UWBP_PalItemSlotBase_C*& itemSlotWidget);
    void Setup(class UPalItemSlot* TargetSlot);
    void RegisterButton(class UCommonButtonBase*& Button);
    void Construct();
    void OnInitialized();
    void OnAddedToFocusPath(FFocusEvent InFocusEvent);
    void OnRemovedFromFocusPath(FFocusEvent InFocusEvent);
    void Destruct();
    void ExecuteUbergraph_WBP_PalItemSlotButtonBase(int32 EntryPoint);
    void OnTriedEquipSlot__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnRequestUseItem__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Button);
    void OnCorruptionUpdate__DelegateSignature();
    void OnNotifyDurability__DelegateSignature(double MaxDurability, double NowDurability, class UWBP_PalItemSlotButtonBase_C* selfWidget);
    void OnSetValidSlot__DelegateSignature();
    void OnSetEmptySlot__DelegateSignature();
    void OnMiddleClickedButton__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* buttonBase);
    void OnFinishLiftedButton__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnLiftedButton__DelegateSignature(int32 LiftNum, class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnDropCanceled__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnDropped__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnDragged__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnRightClickedButton__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* buttonBase, EPalItemSlotPressType PressType);
    void OnUnhoveredButton__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnUnFocusedWidget__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnFocusedWidget__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnHoveredButton__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget);
    void OnClickedButton__DelegateSignature(class UWBP_PalItemSlotButtonBase_C* Widget, EPalItemSlotPressType PressType);
}; // Size: 0x578

#endif
