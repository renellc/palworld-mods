#ifndef UE4SS_SDK_BP_AIController_Interface_Invader_HPP
#define UE4SS_SDK_BP_AIController_Interface_Invader_HPP

class IBP_AIController_Interface_Invader_C : public IInterface
{

    void BindOnInvaderArrivedDelegate(FBindOnInvaderArrivedDelegateEvent Event);
    void OnInvaderArrived();
}; // Size: 0x28

#endif
