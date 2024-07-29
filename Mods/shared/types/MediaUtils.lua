---@meta

---@class FMediaPlayerOptions
---@field Tracks FMediaPlayerTrackOptions
---@field SeekTime FTimespan
---@field PlayOnOpen EMediaPlayerOptionBooleanOverride
---@field Loop EMediaPlayerOptionBooleanOverride
FMediaPlayerOptions = {}

---@return FMediaPlayerOptions
function FMediaPlayerOptions:get() end



---@class FMediaPlayerTrackOptions
---@field Audio int32
---@field Caption int32
---@field MetaData int32
---@field Script int32
---@field Subtitle int32
---@field Text int32
---@field Video int32
FMediaPlayerTrackOptions = {}

---@return FMediaPlayerTrackOptions
function FMediaPlayerTrackOptions:get() end



