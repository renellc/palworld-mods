---@enum EWwiseEventDestroyOptions
EWwiseEventDestroyOptions = {
    StopEventOnDestroy = 0,
    WaitForEventEnd = 1,
    EWwiseEventDestroyOptions_MAX = 2,
}

---@enum EWwiseEventSwitchContainerLoading
EWwiseEventSwitchContainerLoading = {
    AlwaysLoad = 0,
    LoadOnReference = 1,
    EWwiseEventSwitchContainerLoading_MAX = 2,
}

---@enum EWwiseGroupType
EWwiseGroupType = {
    Switch = 0,
    State = 1,
    Unknown = 255,
    EWwiseGroupType_MAX = 256,
}

---@enum EWwiseReloadLanguage
EWwiseReloadLanguage = {
    Manual = 0,
    Immediate = 1,
    Safe = 2,
    EWwiseReloadLanguage_MAX = 3,
}

