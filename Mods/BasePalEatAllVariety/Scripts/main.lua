--[[
Base Pal Eat all Variety

Makes it so that when a pal goes to the feedbox they will eat one of all varieties of food or until they're full (whichever's first)

This is to having various types of food available
]]

--[[
Idea: Find and hook into the function that's called when a pal goes to the feedbox
    APalMonsterCharacter: void SelectedFeedingItem(const FPalItemSlotId& itemSlotId, const int32 Num);

    UPalAction_FeedItemToCharacter - seems to have something to do with characters eating

    UPalIndividualCharacterParameter - bool TryFindEatItem(const FPalContainerId& ContainerId, int32& SlotIndex);
        this might be how to get a pal to try to eat something

    UPalItemContainer - has a corruption multiplier meaning food can go in it. But is there some way to identify if
        it's a foodbox?
    Is a subclass of UPalContainerBase which has FPalContainerId ID which has FGuid ID
        perhaps information about the type of container is in this FGuid

    UPalAIActionBaseCampRecoverHungryChildBase
        seems important for how pals path towards the feedbox

    UPalAIActionCompositeBaseCamp - void InterruptActionToRecoverHungry(const FPalMonsterControllerBaseCampHungryParameter& Parameter);

struct FPalMonsterControllerBaseCampHungryParameter
{
    float RecoverSatietyTo;                                                           // 0x0000 (size: 0x4)
    float RecoverSanityTo;                                                            // 0x0004 (size: 0x4)
    int32 EatMaxNum;                                                                  // 0x0008 (size: 0x4)

}; // Size: 0xC

    UPalUtility class UPalBaseCampManager* GetBaseCampManager(const class UObject* WorldContextObject);
    TArray<FPalBaseCampSignificanceInfo> BaseCampSignificanceInfoList;

    UPalBaseCampModuleItemStorage : public UPalBaseCampFunctionModuleBase
    TArray<FPalBaseCampItemContainerInfo> ContainerInfos;  

    struct FPalBaseCampItemContainerInfo
{
    FPalContainerId ContainerId;                                                      // 0x0000 (size: 0x10)
    FGuid OwnerMapObjectConcreteModelInstanceId;                                      // 0x0010 (size: 0x10)
    EPalBaseCampItemContainerType Type;                                               // 0x0020 (size: 0x1)

}; // Size: 0x24
]]

local config = require("config")

local function track_hungry_pal(self)

end

local function try_eat_different_food(self)
    self.EatTime = config.eat_speed
end



local hooked = false
local function hookBaseCampRecoverHungry()
    if not hooked then
        ExecuteWithDelay(5000, function()
            RegisterHook("/Game/Pal/Blueprint/Controller/AIAction/BaseCamp/RecoverHungry/BP_AIAction_BaseCampRecoverHungry.BP_AIAction_BaseCampRecoverHungry_C:ChangeActionEat", track_hungry_pal(self))
            RegisterHook("/Game/Pal/Blueprint/Controller/AIAction/BaseCamp/RecoverHungry/BP_AIAction_BaseCampRecoverHungry_Eat.BP_AIAction_BaseCampRecoverHungry_Eat_C:OnFinishEatingTime", try_eat_different_food(self))
        end)
        hooked = true
    end
end

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", hookBaseCampRecoverHungry)