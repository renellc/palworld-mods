enum class EClassRepNodeMapping {
    NotRouted = 0,
    RelevantAllConnections = 1,
    Spatialize_Static = 2,
    Spatialize_Dynamic = 3,
    Spatialize_Dormancy = 4,
    EClassRepNodeMapping_MAX = 5,
};

enum class EEnterWaterFlag {
    None = 0,
    OverlapWaterVolume = 1,
    RaycastWaterPlane = 2,
    EEnterWaterFlag_MAX = 3,
};

enum class EFailedCaptureType {
    None = 0,
    NoMPZero = 1,
    TestFailed = 2,
    EFailedCaptureType_MAX = 3,
};

enum class EHumanBone {
    Pelvis = 0,
    Spine1 = 1,
    Spine2 = 2,
    Spine3 = 3,
    Neck = 4,
    Head = 5,
    LeftThigh = 6,
    LeftCalf = 7,
    LeftFoot = 8,
    RightThigh = 9,
    RightCalf = 10,
    RightFoot = 11,
    LeftClavicle = 12,
    LeftUpperArm = 13,
    LeftLowerArm = 14,
    LeftHand = 15,
    RightClavicle = 16,
    RightUpperArm = 17,
    RightLowerArm = 18,
    RightHand = 19,
    EnumCount = 20,
    EHumanBone_MAX = 21,
};

enum class EPalACEWordFilterAPIType {
    Unknown = 0,
    China = 1,
    Global = 2,
    EPalACEWordFilterAPIType_MAX = 3,
};

enum class EPalACEWordFilterSceneType {
    PlayerName = 0,
    PalName = 1,
    WorldName = 2,
    GuildName = 3,
    SignBoard = 4,
    TextChat = 5,
    EPalACEWordFilterSceneType_MAX = 6,
};

enum class EPalAIActionBaseCampRecoverHungryEatState {
    TurnToFood = 0,
    Eat = 1,
    EPalAIActionBaseCampRecoverHungryEatState_MAX = 2,
};

enum class EPalAIActionBaseCampSleepActivelyMode {
    ApproachToBed = 0,
    WalkAround = 1,
    EPalAIActionBaseCampSleepActivelyMode_MAX = 2,
};

enum class EPalAIActionCategory {
    Undefined = 0,
    Call = 1,
    Coop = 2,
    NullAction = 3,
    EPalAIActionCategory_MAX = 4,
};

enum class EPalAIActionType {
    None = 0,
    Action1 = 1,
    Leave = 2,
    Cooperation = 3,
    Warning = 4,
    SideMove = 5,
    EPalAIActionType_MAX = 6,
};

enum class EPalAIMoveResultFailedType {
    Undefined = 0,
    PartialNavMesh = 1,
    EPalAIMoveResultFailedType_MAX = 2,
};

enum class EPalAIResponseType {
    Ignore = 0,
    Escape = 1,
    Battle = 2,
    Special = 3,
    EPalAIResponseType_MAX = 4,
};

enum class EPalAISensorSearchQueryPlayer {
    IncludePlayer = 0,
    IgnorePlayer = 1,
    PlayerOnly = 2,
    EPalAISensorSearchQueryPlayer_MAX = 3,
};

enum class EPalAISightJudgementType {
    None = 0,
    AimedByPlayer = 1,
    EPalAISightJudgementType_MAX = 2,
};

enum class EPalActionType {
    None = 0,
    Sleep = 1,
    WakeUp = 2,
    Death = 3,
    Revive = 4,
    Menace = 5,
    Eat = 6,
    Stan = 7,
    KnockBack = 8,
    BlowAway = 9,
    GeneralAttack = 10,
    MeleeSkill = 11,
    ShootSkill = 12,
    JumpAction = 13,
    RollingAction = 14,
    FullRideAction = 15,
    Turn90R = 16,
    Turn90L = 17,
    Turn180R = 18,
    Turn180L = 19,
    TurnToTarget = 20,
    DiscoverySomething = 21,
    ForwardWalk = 22,
    BackwardWalk = 23,
    Provocation = 24,
    CommonWork = 25,
    Architecture = 26,
    Deforest = 27,
    Mining = 28,
    Feeding = 29,
    GrowupPromotion = 30,
    Watering = 31,
    WateringOneshot = 32,
    Harvest = 33,
    GenerateEnergy = 34,
    GenerateEnergyFire = 35,
    GenerateEnergyElectric = 36,
    Cooking = 37,
    Happy = 38,
    IdleInSpa = 39,
    Ignition = 40,
    TransportItem = 41,
    Cool = 42,
    SpawnItem = 43,
    Resuscitation = 44,
    Liftup = 45,
    BeLiftup = 46,
    Throw = 47,
    BeThrown = 48,
    HumanFeeding = 49,
    HumanFeeding_DoMotion = 50,
    GetupUtubuse_orRight = 51,
    GetupAomuke_orRight = 52,
    ReturnToBaseCamp = 53,
    WaitLoadingAction = 54,
    HumanPetting = 55,
    PalPetting = 56,
    Talk = 57,
    Listen_A = 58,
    Listen_B = 59,
    ChairSit = 60,
    ChairSitMeal = 61,
    ChairSitDrink = 62,
    ChairSitMeat = 63,
    GroundSit = 64,
    SpawnOtomoPal = 65,
    PartnerSkill = 66,
    CommandPal = 67,
    ReturnOtomoPal = 68,
    Step_Forward = 69,
    Step_Back = 70,
    Step_Left = 71,
    Step_Right = 72,
    ElectricShock = 73,
    UnlockCagePalLock = 74,
    CutPalMeat = 75,
    Grappling = 76,
    PalRandomRest = 77,
    PalRandomRest_BaseCamp = 78,
    LargeDown = 79,
    DefenseGunner = 80,
    DefenseWait = 81,
    OpenOilrigGoalBox = 82,
    Mimicry = 83,
    MimicryEncount = 84,
    PlayerSitChair = 85,
    DigOut = 86,
    EPalActionType_MAX = 87,
};

enum class EPalActiveSkillSlotId {
    Default = 0,
    PartnerSkill = 100,
    EPalActiveSkillSlotId_MAX = 101,
};

enum class EPalAdditionalEffectType {
    None = 0,
    Stun = 1,
    Sleep = 2,
    Poison = 3,
    Burn = 4,
    Wetness = 5,
    Freeze = 6,
    Electrical = 7,
    Muddy = 8,
    IvyCling = 9,
    Darkness = 10,
    AttackUp = 11,
    DefenseUp = 12,
    Recovery = 13,
    Trap_LegHold = 14,
    EPalAdditionalEffectType_MAX = 15,
};

enum class EPalAllowConnectPlatform {
    Steam = 0,
    Xbox = 1,
    EPalAllowConnectPlatform_MAX = 2,
};

enum class EPalApplySaveDataOrder {
    Early = 0,
    Normal = 1,
    Late = 2,
    Num = 3,
    EPalApplySaveDataOrder_MAX = 4,
};

enum class EPalArenaBattleResult {
    None = 0,
    Win_Player1 = 1,
    Win_Player2 = 2,
    Draw = 3,
    EPalArenaBattleResult_MAX = 4,
};

enum class EPalArenaInstanceState {
    Open = 0,
    Playing = 1,
    EPalArenaInstanceState_MAX = 2,
};

enum class EPalArenaPlayer {
    Player1 = 0,
    Player2 = 1,
    EPalArenaPlayer_MAX = 2,
};

enum class EPalArenaPlayerIndex {
    None = 0,
    Player1 = 1,
    Player2 = 2,
    EPalArenaPlayerIndex_MAX = 3,
};

enum class EPalArenaSequenceType {
    None = 0,
    PartySelect = 1,
    PreBattle = 2,
    InBattle = 3,
    Result = 4,
    EPalArenaSequenceType_MAX = 5,
};

enum class EPalArenaSetupState {
    None = 0,
    Running = 1,
    Completed = 2,
    EPalArenaSetupState_MAX = 3,
};

enum class EPalAsyncSaveProcessState {
    Collecting = 0,
    CollectFailed = 1,
    Saving = 2,
    SaveCompleted = 3,
    SaveFailed = 4,
    EPalAsyncSaveProcessState_MAX = 5,
};

enum class EPalAttackType {
    Waza = 0,
    Weapon = 1,
    Turret = 2,
    SlipDamage = 3,
    Mine = 4,
    EPalAttackType_MAX = 5,
};

enum class EPalAudioBus {
    None = 0,
    Master = 1,
    BGM = 2,
    JINGLE = 3,
    SE = 4,
    Ambient = 5,
    PalVoice = 6,
    HumanVoice = 7,
    UI = 8,
    MAX = 9,
};

enum class EPalAudioFadeType {
    None = 0,
    FadeIn = 1,
    FadeOut = 2,
    EPalAudioFadeType_MAX = 3,
};

enum class EPalAudioRTPC {
    Field_Time = 0,
    Sliding_Speed = 1,
    EPalAudioRTPC_MAX = 2,
};

enum class EPalAudioState {
    None = 0,
    VillageA = 1,
    VillageB = 2,
    BaseCamp = 3,
    InDoor = 4,
    BossRoom = 5,
    Grassland = 6,
    Forest = 7,
    Desert = 8,
    Mountain = 9,
    Caution = 10,
    Fight = 11,
    End = 12,
    Arena_PartySelect = 13,
    Arena_PreBattle = 14,
    Arena_InBattle = 15,
    Arena_Result = 16,
    Battle_Cute = 17,
    Battle_Cool = 18,
    Battle_Strong = 19,
    Battle_Human_Common = 20,
    Battle_Human_Villain = 21,
    Battle_FieldBoss = 22,
    Battle_Legend = 23,
    Battle_RaidBoss = 24,
    Battle_TowerBoss = 25,
    Battle_RaidBoss_KingBahamut = 26,
    Explore = 27,
    Battle = 28,
    Alive = 29,
    Dead = 30,
    EPalAudioState_MAX = 31,
};

enum class EPalAudioStateGroup {
    InRaid = 0,
    InExplore = 1,
    InSpot = 2,
    InField = 3,
    InArena = 4,
    InBattle = 5,
    BattleBGM = 6,
    SpotName = 7,
    Biome = 8,
    RaidState = 9,
    ArenaState = 10,
    Player_MainState = 11,
    Player_BattleState = 12,
    Player_Life = 13,
    EPalAudioStateGroup_MAX = 14,
};

enum class EPalAudioTrigger {
    None = 0,
    BattleWin = 1,
    RaidEnd = 2,
    Captured = 3,
    GameOver = 4,
    EPalAudioTrigger_MAX = 5,
};

enum class EPalBaseCampAssignType {
    None = 0,
    Work = 1,
    WorkableObject = 2,
    Defense = 3,
    EPalBaseCampAssignType_MAX = 4,
};

enum class EPalBaseCampFacilityRequestResult {
    FailedNotExistsAnyFacilities = 0,
    FailedNotExistsTheFacility = 1,
    FailedAlreadyUsing = 2,
    Success = 3,
    EPalBaseCampFacilityRequestResult_MAX = 4,
};

enum class EPalBaseCampFacilityUsageState {
    Vacant = 0,
    Reserved = 1,
    Using = 2,
    EPalBaseCampFacilityUsageState_MAX = 3,
};

enum class EPalBaseCampItemContainerType {
    HomeChest = 0,
    Chest = 1,
    Other = 2,
    EPalBaseCampItemContainerType_MAX = 3,
};

enum class EPalBaseCampModuleEnergyState {
    Providable = 0,
    Waiting = 1,
    EPalBaseCampModuleEnergyState_MAX = 2,
};

enum class EPalBaseCampModuleTransportItemTransportPriority {
    None = 0,
    BaseCampChest = 1,
    BaseCampChestHigh = 2,
    Requirement = 3,
    FoodBox = 4,
    FoodBoxCooling = 5,
    SpecificItemHighest = 6,
    EPalBaseCampModuleTransportItemTransportPriority_MAX = 7,
};

enum class EPalBaseCampModuleTransportItemTransportableItemExtraType {
    None = 0,
    OnlyCorruptible = 1,
    EPalBaseCampModuleTransportItemTransportableItemExtraType_MAX = 2,
};

enum class EPalBaseCampModuleType {
    None = 0,
    Energy = 1,
    Medical = 2,
    TransportItemDirector = 3,
    ResourceCollector = 4,
    ItemStorages = 5,
    FacilityReservation = 6,
    ObjectMaintenance = 7,
    PassiveEffect = 8,
    EPalBaseCampModuleType_MAX = 9,
};

enum class EPalBaseCampOperationResult {
    Success = 0,
    FailedNotFoundNetworkTransmitter = 1,
    FailedNotFoundBaseCamp = 2,
    FailedNotRequestedFromBaseCampPoint = 3,
    FailedNotFoundOwnerMapObjectModel = 4,
    FailedDismantleMapObject = 5,
    EPalBaseCampOperationResult_MAX = 6,
};

enum class EPalBaseCampPassiveEffectType {
    None = 0,
    WorkSuitability = 1,
    WorkHard = 2,
    EPalBaseCampPassiveEffectType_MAX = 3,
};

enum class EPalBaseCampPassiveEffectWorkHardType {
    Easy = 0,
    Normal = 1,
    Hard = 2,
    VeryHard = 3,
    EPalBaseCampPassiveEffectWorkHardType_MAX = 4,
};

enum class EPalBaseCampState {
    NotAvailable = 0,
    Normal = 1,
    EPalBaseCampState_MAX = 2,
};

enum class EPalBaseCampWorkResult {
    Success = 0,
    FailedNotFoundBaseCamp = 1,
    FailedNotFoundWork = 2,
    FailedNotMatchWorkType = 3,
    EPalBaseCampWorkResult_MAX = 4,
};

enum class EPalBaseCampWorkerAssignResult {
    Success = 0,
    FailedNotFoundBaseCamp = 1,
    FailedNotFoundWork = 2,
    FailedOverflowAssignCount = 3,
    FailedCharacterHandleMissing = 4,
    EPalBaseCampWorkerAssignResult_MAX = 5,
};

enum class EPalBaseCampWorkerDirectionBattleType {
    AttackToEnemyInBaseCamp = 0,
    NoBattle = 1,
    Num = 2,
    FirstValue = 0,
    EPalBaseCampWorkerDirectionBattleType_MAX = 3,
};

enum class EPalBaseCampWorkerDirectorState {
    Init = 0,
    WaitForLoadingAround = 1,
    Active = 2,
    EPalBaseCampWorkerDirectorState_MAX = 3,
};

enum class EPalBaseCampWorkerEventPriority {
    Top = 0,
    Default = 1,
    EPalBaseCampWorkerEventPriority_MAX = 2,
};

enum class EPalBaseCampWorkerEventType {
    None = 0,
    Escape = 1,
    OverworkDeath = 2,
    Sick = 3,
    DodgeWork = 4,
    DodgeWork_Short = 5,
    DodgeWork_Sleep = 6,
    EatTooMuch = 7,
    Trantrum = 8,
    FightWithFriend = 9,
    TurnFoodBox = 10,
    DestroyBuilding = 11,
    EPalBaseCampWorkerEventType_MAX = 12,
};

enum class EPalBaseCampWorkerSickType {
    None = 0,
    Cold = 1,
    Sprain = 2,
    Bulimia = 3,
    GastricUlcer = 4,
    Fracture = 5,
    Weakness = 6,
    DepressionSprain = 7,
    DisturbingElement = 8,
    EPalBaseCampWorkerSickType_MAX = 9,
};

enum class EPalBaseCampWorkerTaskCheck {
    None = 0,
    SleepAtNight = 1,
    EPalBaseCampWorkerTaskCheck_MAX = 2,
};

enum class EPalBaseCampWorkerTaskCheckResponse {
    ExistsTask = 0,
    EPalBaseCampWorkerTaskCheckResponse_MAX = 1,
};

enum class EPalBaseCampWorkerTaskType {
    Undefined = 0,
    IgnitionTorchAtNight = 1,
    EPalBaseCampWorkerTaskType_MAX = 2,
};

enum class EPalBaseCampWorkerWalkAroundState {
    WalkAround = 0,
    Rest = 1,
    EPalBaseCampWorkerWalkAroundState_MAX = 2,
};

enum class EPalBattleBGMType {
    None = 0,
    Cute = 1,
    Cool = 2,
    Strong = 3,
    Human_Common = 4,
    Human_Villain = 5,
    FieldBoss = 6,
    Legend = 7,
    RaidBoss = 8,
    TowerBoss = 9,
    RaidBoss_KingBahamut = 10,
    EPalBattleBGMType_MAX = 11,
};

enum class EPalBiologicalGradeComparedResult {
    Greater = 0,
    Equal = 1,
    Smaller = 2,
    EPalBiologicalGradeComparedResult_MAX = 3,
};

enum class EPalBiomeType {
    Undefined = 0,
    Meadow = 1,
    Desert = 2,
    Coast = 3,
    IceSnow = 4,
    Volcano = 5,
    CentralCity = 6,
    SkyCityCity = 7,
    WorldTree = 8,
    EPalBiomeType_MAX = 9,
};

enum class EPalBlowVelocityOwner {
    None = 0,
    AttackCharacter = 1,
    HitComponent = 2,
    HitLocation = 3,
    EPalBlowVelocityOwner_MAX = 4,
};

enum class EPalBodyLocationType {
    None = 0,
    Head = 1,
    Mouth = 2,
    BulletMuzzle = 3,
    BodyCenter = 4,
    JumpEffect = 5,
    EPalBodyLocationType_MAX = 6,
};

enum class EPalBodyPartsType {
    Weak = 0,
    Normal = 1,
    Strong = 2,
    Invincible = 3,
    EPalBodyPartsType_MAX = 4,
};

enum class EPalBodyTemperatureState {
    Default = 0,
    Cold = 1,
    Heat = 2,
    EPalBodyTemperatureState_MAX = 3,
};

enum class EPalBossBattleCombatResult {
    None = 0,
    Won = 1,
    TimeUp = 2,
    AllDead = 3,
    EPalBossBattleCombatResult_MAX = 4,
};

enum class EPalBossBattleDifficulty {
    None = 0,
    Normal = 1,
    Hard = 2,
    EPalBossBattleDifficulty_MAX = 3,
};

enum class EPalBossBattleSequenceType {
    None = 0,
    Opening = 1,
    Combat = 2,
    Ending = 3,
    Completed = 4,
    EPalBossBattleSequenceType_MAX = 5,
};

enum class EPalBossBattleState {
    Open = 0,
    PreBattle = 1,
    InBattle = 2,
    AfterBattle = 3,
    EPalBossBattleState_MAX = 4,
};

enum class EPalBossType {
    None = 0,
    GrassBoss = 1,
    ElectricBoss = 2,
    ForestBoss = 3,
    SnowBoss = 4,
    DesertBoss = 5,
    SakurajimaBoss = 6,
    EPalBossType_MAX = 7,
};

enum class EPalBuildInstallCheckModeType {
    Normal = 0,
    InstallAtReticle = 1,
    EPalBuildInstallCheckModeType_MAX = 2,
};

enum class EPalBuildObjectInstallStrategy {
    Normal = 0,
    WallV2 = 1,
    SinkableNormal = 2,
    Foundation = 3,
    Roof = 4,
    Stairs = 5,
    GroundWall = 6,
    GroundWallV2 = 7,
    BaseCampPoint = 8,
    AttachToWall = 9,
    AttachToCeil = 10,
    PlaceOnItemProvider = 11,
    Pillar = 12,
    PalStorage = 13,
    Floor = 14,
    Wall = 15,
    Undefined = 16,
    EPalBuildObjectInstallStrategy_MAX = 17,
};

enum class EPalBuildObjectState {
    Init = 0,
    Simulation = 1,
    Building = 2,
    Available = 3,
    NotAvailable = 4,
    EPalBuildObjectState_MAX = 5,
};

enum class EPalBuildObjectTypeA {
    Product = 0,
    Pal = 1,
    Storage = 2,
    Food = 3,
    Infrastructure = 4,
    Light = 5,
    Foundation = 6,
    Defense = 7,
    Other = 8,
    Furniture = 9,
    Dismantle = 10,
    EPalBuildObjectTypeA_MAX = 11,
};

enum class EPalBuildObjectTypeB {
    Prod_Craft = 0,
    Prod_Resource = 1,
    Prod_Furnace = 2,
    Prod_Medicine = 3,
    Pal_Capture = 4,
    Pal_Breed = 5,
    Pal_Modify = 6,
    Infra_Medical = 7,
    Infra_Storage = 8,
    Infra_Trade = 9,
    Infra_GeneratePower = 10,
    Infra_Defense = 11,
    Infra_Environment = 12,
    Food_Basic = 13,
    Food_Agriculture = 14,
    Food_Cooking = 15,
    Food_Livestock = 16,
    Found_Basic = 17,
    Found_House = 18,
    Other = 19,
    EPalBuildObjectTypeB_MAX = 20,
};

enum class EPalBuildObjectVisualType {
    Invisible = 0,
    Normal = 1,
    Simulation = 2,
    CannotInstall = 3,
    Building = 4,
    BuildComplete = 5,
    DismantleTarget = 6,
    Damage = 7,
    Repair = 8,
    EPalBuildObjectVisualType_MAX = 9,
};

enum class EPalBuildProcessState {
    Building = 0,
    Completed = 1,
    EPalBuildProcessState_MAX = 2,
};

enum class EPalCaptureSphereLevelType {
    Undefined = 0,
    Normal = 1,
    Mega = 2,
    Giga = 3,
    Master = 4,
    Tera = 5,
    Legend = 6,
    Ultimate = 7,
    EPalCaptureSphereLevelType_MAX = 8,
};

enum class EPalCharacterCompleteDelegatePriority {
    SetTrainer = 0,
    Default = 1,
    PostDefault = 2,
    EPalCharacterCompleteDelegatePriority_MAX = 3,
};

enum class EPalCharacterContainerOperationResult {
    Success = 0,
    FailedTerminatedManager = 1,
    FailedIssueContainerId = 2,
    FailedOverflowSlotNum = 3,
    FailedNotFoundContainer = 4,
    FailedNotFoundSlot = 5,
    FailedNotFoundCharacter = 6,
    FailedNotFoundCharacterParameter = 7,
    FailedIsLocalOnlyContainer = 8,
    FailedNoContainerInfoInResponse = 9,
    FailedNotEnoughSlotSpace = 10,
    FailedCannotGetSlotInfo = 11,
    FailedChangedSlotInfoRequestedOne = 12,
    FailedCannotSetTargetHandle = 13,
    FailedAlreadyLocked = 14,
    FailedNotJoinedPlayer = 15,
    FailedTransactionLocked = 16,
    FailedSimple = 17,
    FailedServerCode = 18,
    EPalCharacterContainerOperationResult_MAX = 19,
};

enum class EPalCharacterContainerSortType {
    PaldexNo_Asc = 0,
    Level_Desc = 1,
    ElementType = 2,
    BossFlag = 3,
    EPalCharacterContainerSortType_MAX = 4,
};

enum class EPalCharacterImportanceType {
    Undefined = 0,
    AllUpdate = 1,
    Nearest = 2,
    Near = 3,
    MidInSight = 4,
    FarInSight = 5,
    MidOutSight = 6,
    FarOutSight = 7,
    Farthest = 8,
    EPalCharacterImportanceType_MAX = 9,
};

enum class EPalCharacterLocationType {
    None = 0,
    Normal = 1,
    Warning = 2,
    EPalCharacterLocationType_MAX = 3,
};

enum class EPalCharacterMovementCustomMode {
    None = 0,
    Fatigue = 1,
    Sprint = 2,
    Sliding = 3,
    Glider = 4,
    Climbing = 5,
    Riding = 6,
    Rolling = 7,
    Grappling = 8,
    EPalCharacterMovementCustomMode_MAX = 9,
};

enum class EPalCharacterNaturalUpdateType {
    Player = 0,
    OtomoPal = 1,
    BaseCampPal = 2,
    EPalCharacterNaturalUpdateType_MAX = 3,
};

enum class EPalCharacterStatusOperationName {
    Undefined = 0,
    Attack = 1,
    Defence = 2,
    HP = 3,
    WorkSpeed = 4,
    EPalCharacterStatusOperationName_MAX = 5,
};

enum class EPalCharacterStatusOperationResult {
    Success = 0,
    FailedNotValidIndividualHandle = 1,
    FailedNotValidIndividualParameter = 2,
    FailedNotValidPlayerState = 3,
    FailedNotValidPlayerRecordData = 4,
    FailedNotValidPlayerInventoryData = 5,
    FailedNotValidOtomoHolder = 6,
    FailedGetPlayerRankMasterData = 7,
    FailedGetCharacterUpgradeMasterData = 8,
    FailedNotFoundOtomo = 9,
    FailedAlreadyMaxRank = 10,
    FailedAlreadyResetStatus = 11,
    FailedCalcRequiredRelicNum = 12,
    FailedLackRelicNum = 13,
    FailedCalcRequiredUpgradeItemNum = 14,
    FailedLackUpgradeItemNum = 15,
    FailedLackMoneyNum = 16,
    FailedItemOperation = 17,
    EPalCharacterStatusOperationResult_MAX = 18,
};

enum class EPalChatCategory {
    None = 0,
    Global = 1,
    Guild = 2,
    Say = 3,
    EPalChatCategory_MAX = 4,
};

enum class EPalCheckSpawnResultType {
    Ignore = 0,
    Spawn = 1,
    Despawn = 2,
    EPalCheckSpawnResultType_MAX = 3,
};

enum class EPalContainerOperationRestrictType {
    None = 0,
    CannotInject = 1,
    EPalContainerOperationRestrictType_MAX = 2,
};

enum class EPalContainerUsageType {
    None = 0,
    ItemStorage = 1,
    EPalContainerUsageType_MAX = 2,
};

enum class EPalCoopSkillSearchType {
    Undefined = 0,
    MapObject = 1,
    Character = 2,
    DungeonPortal = 3,
    DungeonGoal = 4,
    EPalCoopSkillSearchType_MAX = 5,
};

enum class EPalCurrentActionNotifyType {
    Attack = 0,
    Spawn = 1,
    Other = 2,
    EPalCurrentActionNotifyType_MAX = 3,
};

enum class EPalDamageAnimationReactionType {
    None = 0,
    Small = 1,
    Big = 2,
    EPalDamageAnimationReactionType_MAX = 3,
};

enum class EPalDamageTextSeq {
    WaitStart = 0,
    Displaying = 1,
    WaitClose = 2,
    EPalDamageTextSeq_MAX = 3,
};

enum class EPalDamageTextType {
    DoubleRegist = 0,
    SingleRegist = 1,
    Normal = 2,
    SignelWeak = 3,
    DoubleWeak = 4,
    EPalDamageTextType_MAX = 5,
};

enum class EPalDeadType {
    Undefined = 0,
    Attack = 1,
    SelfDestruction = 2,
    BodyTemperature = 3,
    Falling = 4,
    Poison = 5,
    Burn = 6,
    Drown = 7,
    TowerBossBattle = 8,
    Ground = 9,
    EPalDeadType_MAX = 10,
};

enum class EPalDescendantScrollDestination {
    IntoView = 0,
    TopOrLeft = 1,
    Center = 2,
    EPalDescendantScrollDestination_MAX = 3,
};

enum class EPalDialogType {
    Alert = 0,
    YesNo = 1,
    OkCancel = 2,
    EPalDialogType_MAX = 3,
};

enum class EPalDropItemType {
    None = 0,
    UNKO = 1,
    Max = 2,
};

enum class EPalDungeonEnemySpawnerRankType {
    None = 0,
    Normal = 1,
    Boss = 2,
    EPalDungeonEnemySpawnerRankType_MAX = 3,
};

enum class EPalDungeonInstanceBossState {
    Spawned = 0,
    Dead = 1,
    EPalDungeonInstanceBossState_MAX = 2,
};

enum class EPalDungeonItemSpawnerType {
    Normal = 0,
    Special = 1,
    EPalDungeonItemSpawnerType_MAX = 2,
};

enum class EPalDungeonType {
    Normal = 0,
    Fixed = 1,
    EPalDungeonType_MAX = 2,
};

enum class EPalElementType {
    None = 0,
    Normal = 1,
    Fire = 2,
    Water = 3,
    Leaf = 4,
    Electricity = 5,
    Ice = 6,
    Earth = 7,
    Dark = 8,
    Dragon = 9,
    MAX = 10,
};

enum class EPalEnemySpawnActorType {
    Rifle = 0,
    ShotGun = 1,
    Bat = 2,
    RPG = 3,
    EPalEnemySpawnActorType_MAX = 4,
};

enum class EPalEnemySpawnDefaultAction {
    None = 0,
    StopStand = 1,
    Turn90 = 2,
    Turn180 = 3,
    PointPathWalk = 4,
    EPalEnemySpawnDefaultAction_MAX = 5,
};

enum class EPalEnergyType {
    None = 0,
    Electric = 1,
    EPalEnergyType_MAX = 2,
};

enum class EPalFacialEyeType {
    None = 0,
    Default = 1,
    Close = 2,
    HalfClose = 3,
    Pain = 4,
    Smile = 5,
    Anger = 6,
    Trouble = 7,
    GuruGuru = 8,
    EPalFacialEyeType_MAX = 9,
};

enum class EPalFacialMouthType {
    None = 0,
    Default = 1,
    Pain = 2,
    Smile = 3,
    Anger = 4,
    EPalFacialMouthType_MAX = 5,
};

enum class EPalFadeWidgetLayerType {
    Invalid = 0,
    Common_Lowest = 1,
    Common_Mid = 2,
    Common_Highest = 3,
    Loading = 4,
    Loading_WorldPartition = 5,
    Loading_SucceedRequestEnterExitStageInClient = 6,
    EPalFadeWidgetLayerType_MAX = 7,
};

enum class EPalFadeWidgetType {
    Invalid = 0,
    SimpleColor = 1,
    Loading = 2,
    EPalFadeWidgetType_MAX = 3,
};

enum class EPalFarmCropState {
    None = 0,
    NoSelect = 1,
    Watered = 2,
    Growup = 3,
    Harvestable = 4,
    Seeding = 5,
    EPalFarmCropState_MAX = 6,
};

enum class EPalFlyHeightType {
    Stop = 0,
    ToFly = 1,
    ToLand = 2,
    EPalFlyHeightType_MAX = 3,
};

enum class EPalFoliagePresetType {
    None = 0,
    NormalTree_L = 1,
    LowTree = 2,
    NormalTree_L_CherryBlossom = 3,
    Mushroom_L = 4,
    Mushroom_S = 5,
    EPalFoliagePresetType_MAX = 6,
};

enum class EPalFoodStatusEffectType {
    None = 0,
    Attack = 1,
    Defense = 2,
    HungerResist = 3,
    SANResist = 4,
    WorkSpeed = 5,
    Regene_Hp = 6,
    EPalFoodStatusEffectType_MAX = 7,
};

enum class EPalFootType {
    None = 0,
    ForeFootLeft = 1,
    ForeFootRight = 2,
    HindFootLeft = 3,
    HindFootRight = 4,
    MAX = 5,
};

enum class EPalGameModeType {
    Title = 0,
    InGame = 1,
    EPalGameModeType_MAX = 2,
};

enum class EPalGameSystemInitFailedReason {
    None = 0,
    WatchLog = 1,
    EPalGameSystemInitFailedReason_MAX = 2,
};

enum class EPalGameSystemInitProcessType {
    Init = 0,
    WaitForInitSystems = 1,
    ApplyWorldSaveData = 2,
    ApplyPlayerSaveData = 3,
    EPalGameSystemInitProcessType_MAX = 4,
};

enum class EPalGameSystemInitState {
    Init = 0,
    InProgress = 1,
    Complete = 2,
    Failed = 3,
    EPalGameSystemInitState_MAX = 4,
};

enum class EPalGenderType {
    None = 0,
    Male = 1,
    Female = 2,
    EPalGenderType_MAX = 3,
};

enum class EPalGeneralAnimSequenceType {
    None = 0,
    JumpStart = 1,
    JumpLoop = 2,
    JumpEnd = 3,
    EPalGeneralAnimSequenceType_MAX = 4,
};

enum class EPalGeneralBlendSpaceType {
    None = 0,
    GeneralMove = 1,
    RidingMove = 2,
    FlyingMove = 3,
    FlyingRidingMove = 4,
    TransportingObjectMove = 5,
    EPalGeneralBlendSpaceType_MAX = 6,
};

enum class EPalGeneralMontageType {
    None = 0,
    GeneralAttackReady_Near = 1,
    GeneralAttackReadyLoop_Near = 2,
    GeneralAttackProcess_Near = 3,
    GeneralAttackProcessLoop_Near = 4,
    GeneralAttackAfter_Near = 5,
    GeneralAttackReady_Far = 6,
    GeneralAttackReadyLoop_Far = 7,
    GeneralAttackProcess_Far = 8,
    GeneralAttackProcessLoop_Far = 9,
    GeneralAttackAfter_Far = 10,
    Rolling = 11,
    Step_Forward = 12,
    Step_Back = 13,
    Step_Right = 14,
    Step_Left = 15,
    JumpPreliminary = 16,
    JumpStart = 17,
    SleepStart = 18,
    SleepLoop = 19,
    SleepEnd = 20,
    BeLiftupStart = 21,
    BeLiftupLoop = 22,
    DamageAdditive = 23,
    HumanPetting_Standby_S = 24,
    HumanPetting_Standby_L = 25,
    HumanPetting_DoStroke_S = 26,
    HumanPetting_DoStroke_SM = 27,
    HumanPetting_DoStroke_M = 28,
    HumanPetting_DoStroke_L = 29,
    Climbing_ClimbUpAtTop = 30,
    Grappling = 31,
    EatUpper = 32,
    Defense_Wait = 33,
    Ragdoll = 34,
    LargeDown_Start = 35,
    LargeDown_Loop = 36,
    LargeDown_End = 37,
    EPalGeneralMontageType_MAX = 38,
};

enum class EPalGenusCategoryType {
    None = 0,
    Humanoid = 1,
    FourLegged = 2,
    Dragon = 3,
    Fish = 4,
    Bird = 5,
    Monster = 6,
    Other = 7,
    EPalGenusCategoryType_MAX = 8,
};

enum class EPalGroupOperationResult {
    Success = 0,
    FailedNotFoundNetworkTransmitter = 1,
    FailedCreateNewGroup = 2,
    FailedNotFoundGroup = 3,
    FailedNotFoundGuild = 4,
    FailedNotFoundOrganization = 5,
    FailedNotFoundCharacterHandle = 6,
    FailedNotFoundCharacterIndividualID = 7,
    FailedNotFoundCharacterParameter = 8,
    FailedNotFoundPlayerCharacterHandle = 9,
    FailedAlreadyBelongToGroup = 10,
    FailedNotImplementExitNoPlayerCharacter = 11,
    FailedAlreadyExist = 12,
    FailedPlayerAlreadyBelongingToGuild = 13,
    FailedBaseCampAlreadyBelongingToGuild = 14,
    FailedPlayerNotBelongingToGuild = 15,
    FailedGuildMaxPlayerNum = 16,
    FailedBelongingToIndependentGuildOtherPlayer = 17,
    FailedPermissionDeniedByNotAdmin = 18,
    FailedAdminCannotExitGuild = 19,
    FailedDisposeStaticOrganization = 20,
    FailedNotEnoughSpaceStoreBackBaseCampWorkers = 21,
    FailedOverBaseCamp = 22,
    FailedBaseCampNotBelongingToGuild = 23,
    FailedNotFoundBaseCamp = 24,
    FailedBaseCampOperation = 25,
    FailedNotImplement = 26,
    EPalGroupOperationResult_MAX = 27,
};

enum class EPalGroupType {
    Undefined = 0,
    Neutral = 1,
    Organization = 2,
    IndependentGuild = 3,
    Guild = 4,
    ResidentEnemy = 5,
    EPalGroupType_MAX = 6,
};

enum class EPalGuildEnterRequestFlowResult {
    Undefined = 0,
    ConfirmEnterGuildToApplicant_No = 1,
    ConfirmEnterGuildToApplicant_LoseBaseCamp_No = 2,
    OfferEnterGuildToRespondent_No = 3,
    Success = 4,
    EPalGuildEnterRequestFlowResult_MAX = 5,
};

enum class EPalGuildJoinRequestConfirm {
    None = 0,
    JoinLowBaseCampLevelGuild = 1,
    LoseLastBaseCamp = 2,
    EPalGuildJoinRequestConfirm_MAX = 3,
};

enum class EPalGuildJoinRequestResult {
    Failed_NotValidGroupManager = 0,
    Failed_Terminated = 1,
    Failed_NotValidApplicantPlayerCharacter = 2,
    Failed_NotValidApplicantPlayerState = 3,
    Failed_NotValidApplicantPlayerGuild = 4,
    Failed_NotValidRespondentPlayerCharacter = 5,
    Failed_NotValidRespondentPlayerController = 6,
    Failed_NotFoundApplicantPlayerGuild = 7,
    Failed_NotExistsApplicantPlayerInTargetGuild = 8,
    Failed_NotExistsTargetPlayerInTargetGuild = 9,
    Failed_CannotExitGuildByAlonePlayer = 10,
    Failed_CannotExitGuildAdminPlayer = 11,
    Failed_NotAdminApplicantPlayer = 12,
    Failed_CannotJoinOtherGuildApplicant = 13,
    Failed_RequestAlreadyInProgressOtherProcess = 14,
    Failed_TooFarPlayers = 15,
    Failed_TooManyRequest = 16,
    Failed_RefuseByRespondent = 17,
    Failed_CancelByApplicant = 18,
    Failed_OverBaseCampNum_Applicant = 19,
    Failed_OverBaseCampNum_Respondent = 20,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Applicant = 21,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Respondent = 22,
    Separator_Success_Failed = 23,
    Succcess_MergePalBox_Applicant = 24,
    Succcess_MergePalBox_Respondent = 25,
    Succcess_NoMerge_Applicant = 26,
    Succcess_NoMerge_Respondent = 27,
    EPalGuildJoinRequestResult_MAX = 28,
};

enum class EPalGuildPlayerStatus {
    Logout = 0,
    Online = 1,
    EPalGuildPlayerStatus_MAX = 2,
};

enum class EPalGuildRequestResult {
    FailedNotValidGroupManager = 0,
    FailedNotValidApplicantPlayerCharacter = 1,
    FailedNotValidRespondentPlayerCharacter = 2,
    FailedNotValidRespondentPlayerController = 3,
    FailedCannotJoinOtherGuildApplicant = 4,
    FailedRequestAlreadyInProgressOtherProcess = 5,
    Failed_RefuseByRespondent = 6,
    Failed_CancelByApplicant = 7,
    Failed_OverBaseCampNum_Applicant = 8,
    Failed_OverBaseCampNum_Respondent = 9,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Applicant = 10,
    Failed_NotEnoughSpaceStoreBackBaseCampWorkers_Respondent = 11,
    Succcess_MergePalBox_Applicant = 12,
    Succcess_MergePalBox_Respondent = 13,
    Succcess_NoMerge_Applicant = 14,
    Succcess_NoMerge_Respondent = 15,
    Success = 16,
    EPalGuildRequestResult_MAX = 17,
};

enum class EPalHUDDisplayType {
    Undefined = 0,
    DamegeReact = 1,
    InteractOn = 2,
    InteractOff = 3,
    EPalHUDDisplayType_MAX = 4,
};

enum class EPalHUDWidgetPriority {
    Default = 0,
    EnemyMark = 1,
    DamagePopUp = 2,
    PlayerInputGuard = 3,
    PlayerUI = 4,
    CaptureingLoupe = 5,
    CaptureReticle = 6,
    InteractIndicator = 7,
    BuildingUI = 8,
    RadialMenu = 9,
    GameOverUI = 10,
    DebugInfo = 11,
    EPalHUDWidgetPriority_MAX = 12,
};

enum class EPalIVisitorNPCAction {
    None = 0,
    ReturnToSpawnedPoint = 1,
    Raid = 2,
    EPalIVisitorNPCAction_MAX = 3,
};

enum class EPalInLoadCollectionType {
    None = 0,
    InstanceID = 1,
    ContainerID = 2,
    DynamicItemID = 3,
    MAX = 4,
};

enum class EPalIncidentState {
    None = 0,
    Initialized = 1,
    Executing = 2,
    Completed = 3,
    Canceled = 4,
    InstanceCreateFailed = 255,
    EPalIncidentState_MAX = 256,
};

enum class EPalIncidentTalkType {
    None = 0,
    OneTalk = 1,
    MultiTalk = 2,
    CharacterTalk = 3,
    EPalIncidentTalkType_MAX = 4,
};

enum class EPalInteractiveObjectActionType {
    None = 0,
    Interact1 = 1,
    Interact2 = 2,
    Interact3 = 3,
    Interact4 = 4,
    EPalInteractiveObjectActionType_MAX = 5,
};

enum class EPalInteractiveObjectButtonType {
    OnePush = 0,
    LongPush_WithGauge = 1,
    LongPush_WithoutGauge = 2,
    LongPush_Infinity = 3,
    EPalInteractiveObjectButtonType_MAX = 4,
};

enum class EPalInteractiveObjectIndicatorType {
    None = 0,
    Build = 1,
    BuildCancel = 2,
    Work = 3,
    Open = 4,
    OpenByPartnerSkill = 5,
    Picking = 6,
    OpenCraftMenu = 7,
    OpenConverterMenu = 8,
    OpenBaseCampMenu = 9,
    OpenBaseCampTaskMenu = 10,
    OpenPalBoxMenu = 11,
    OpenPalRankUp = 12,
    Collect = 13,
    Pickup = 14,
    SelectCrop = 15,
    Seeding = 16,
    Watering = 17,
    Harvest = 18,
    OpenPalMedicalBedMenu = 19,
    SleepPlayerBed = 20,
    GetupPlayerBed = 21,
    OpenDetailMenu = 22,
    SelectRecipe = 23,
    PickupProduct = 24,
    Mining = 25,
    UnlockFastTravel = 26,
    FastTravel = 27,
    UnuseFastTravel = 28,
    Obtain = 29,
    SetEgg = 30,
    StoreAll = 31,
    ObtainAll = 32,
    RecoveryAllOtomo = 33,
    Liftup = 34,
    MoveToWorker = 35,
    MoveToPalBox = 36,
    OpenWorkerMenu = 37,
    CoopAction = 38,
    Talk = 39,
    EnterDungeon = 40,
    ExitDungeon = 41,
    EntryBossBattle = 42,
    EntryBossBattleHard = 43,
    EntryBossBattleFullMember = 44,
    StartBossBattle = 45,
    EnterArena = 46,
    ArenaMatching = 47,
    ArenaFullMember = 48,
    StartArena = 49,
    ArenaRule = 50,
    ArenaMultiOnly = 51,
    Resuscitation = 52,
    Repair = 53,
    StatusOperator_Player = 54,
    StatusOperator_Pal = 55,
    Ignition = 56,
    OpenDoor = 57,
    CloseDoor = 58,
    OpenMenu_SecuritySetting = 59,
    InputPassword = 60,
    InputPassword_CannotTry = 61,
    SelectRepairTarget = 62,
    CancelWork = 63,
    WaitForReplication = 64,
    RequestJoinGuild = 65,
    Signboard = 66,
    OpenCaptureCage = 67,
    ChangeBaseCampBattleType_AttackToEnemyInBaseCamp = 68,
    ChangeBaseCampBattleType_NoBattle = 69,
    SummonRaidBoss = 70,
    SummonRaidBoss_RequireMaterial = 71,
    CharacterMake = 72,
    OpenWorkHardMenu = 73,
    OpenWorkSuitabilityPreferenceMenu = 74,
    OpenFixedAssignManageMenu = 75,
    OpenChestItemPreferenceMenu = 76,
    OpenSkinChangeMenu = 77,
    Uninteractable = 78,
    DisableGuildJoin = 79,
    DestroyOilrigCannon = 80,
    Test_Warp = 81,
    DevTest_1 = 82,
    DevTest_2 = 83,
    DevTest_3 = 84,
    DevTest_4 = 85,
    EPalInteractiveObjectIndicatorType_MAX = 86,
};

enum class EPalInvaderType {
    None = 0,
    InvaderEnemy = 1,
    VisitorNPC = 2,
    EPalInvaderType_MAX = 3,
};

enum class EPalItemOperationResult {
    Success = 0,
    SuccessNoOperation = 1,
    FailedTerminatedManager = 2,
    FailedNotExistsInventoryData = 3,
    FailedContainerOverflowSlotNum = 4,
    FailedContainerItemInfoOverSlotNum = 5,
    FailedContainerOverflowItemsInSlot = 6,
    FailedContainerNotFoundContainer = 7,
    FailedContainerNotFoundSlot = 8,
    FailedContainerIsLocalOnly = 9,
    FailedContainerNotEqualsId = 10,
    FailedCreateDynamicItemData = 11,
    FailedNoDynamicItemIds = 12,
    FailedNotFoundContainer = 13,
    FailedNotFoundSlot = 14,
    FailedNotFoundStaticItemData = 15,
    FailedNotEnoughSlotSpace = 16,
    FailedSameSlotUseProduceAndConsume = 17,
    FailedNotEnoughConsumes = 18,
    FailedInValidItemInSlot = 19,
    FailedNotEnoughNumInSlot = 20,
    FailedNotEqualRequiredItemInSlot = 21,
    FailedGetLocalSlotInServer = 22,
    FailedEmptyConsumeItemInfo = 23,
    FailedSlotCountIsZero = 24,
    FailedCannotAggregateSlotItem = 25,
    FailedInvalidPermission = 26,
    FailedNotAllowedByFilter = 27,
    FailedNotControllable = 28,
    FailedRestrictedOperation = 29,
    FailedRecievedItemNotEqual = 30,
    FailedTransactionLockedOperation = 31,
    FailedNotFoundRowNameOrHash = 32,
    FailedUnknown = 33,
    FailedUnknownLogOutput = 34,
    EPalItemOperationResult_MAX = 35,
};

enum class EPalItemOperationType {
    Undefined = 0,
    Product = 1,
    Move = 2,
    Dispose = 3,
    EPalItemOperationType_MAX = 4,
};

enum class EPalItemShopProductType {
    Invalid = 0,
    Normal = 1,
    OnlyPurchaseOne = 2,
    EPalItemShopProductType_MAX = 3,
};

enum class EPalItemSlotPressType {
    Normal = 0,
    LiftHalf = 1,
    LiftOne = 2,
    EPalItemSlotPressType_MAX = 3,
};

enum class EPalItemTypeA {
    None = 0,
    Weapon = 1,
    SpecialWeapon = 2,
    Armor = 3,
    Accessory = 4,
    Material = 5,
    Consume = 6,
    Ammo = 7,
    Food = 8,
    Essential = 9,
    Glider = 10,
    MonsterEquipWeapon = 11,
    Blueprint = 12,
    EPalItemTypeA_MAX = 13,
};

enum class EPalItemTypeB {
    None = 0,
    WeaponMelee = 1,
    WeaponBow = 2,
    WeaponCrossbow = 3,
    WeaponHandgun = 4,
    WeaponAssaultRifle = 5,
    WeaponSniperRifle = 6,
    WeaponRocketLauncher = 7,
    WeaponShotgun = 8,
    WeaponFlameThrower = 9,
    WeaponGatlingGun = 10,
    WeaponCollectionTool = 11,
    WeaponThrowObject = 12,
    WeaponGrapplingGun = 13,
    SPWeaponCaptureBall = 14,
    SPWeaponDamageTrap = 15,
    SPWeaponCaptureTrap = 16,
    SPWeaponCaptureRope = 17,
    ArmorHead = 18,
    ArmorBody = 19,
    Accessory = 20,
    MaterialOre = 21,
    MaterialJewelry = 22,
    MaterialIngot = 23,
    MaterialWood = 24,
    MaterialStone = 25,
    MaterialProccessing = 26,
    MaterialMonster = 27,
    MaterialPalEgg = 28,
    ConsumeBandage = 29,
    ConsumeSeed = 30,
    ConsumeBullet = 31,
    ConsumeWazaMachine = 32,
    ConsumeTechnologyBook = 33,
    ConsumeAncientTechnologyBook = 34,
    ConsumeOther = 35,
    ConsumeGainStatusPoints = 36,
    ConsumePalLevelUp = 37,
    ConsumePalGainExp = 38,
    ConsumePalTalentUp = 39,
    ConsumePalRankUp = 40,
    FoodMeat = 41,
    FoodVegetable = 42,
    FoodFish = 43,
    FoodDishMeat = 44,
    FoodDishVegetable = 45,
    FoodDishFish = 46,
    FoodProcessed = 47,
    Essential = 48,
    Essential_UnlockPlayerFuture = 49,
    Glider = 50,
    Shield = 51,
    Money = 52,
    Medicine = 53,
    Drug = 54,
    MonsterEquipWeapon = 55,
    Blueprint = 56,
    ReturnToBaseCamp = 57,
    Essential_PalGear = 58,
    EPalItemTypeB_MAX = 59,
};

enum class EPalKeyConfigAxisFilterType {
    All = 0,
    Plus = 1,
    Minus = 2,
    EPalKeyConfigAxisFilterType_MAX = 3,
};

enum class EPalKeyConfigCategory {
    MouseAndKeyboard = 0,
    GamePad = 1,
    EPalKeyConfigCategory_MAX = 2,
};

enum class EPalKillLogDisplayType {
    Down = 0,
    Death = 1,
    EPalKillLogDisplayType_MAX = 2,
};

enum class EPalLandingType {
    None = 0,
    FootStep = 1,
    FootStep_S = 2,
    JumpLanding = 3,
    RollStep_Fwd = 4,
    RollStep_L = 5,
    RollStep_R = 6,
    RollStep_Bwd = 7,
    FootStep_Index_Begin = 1,
    FootStep_Index_End = 2,
    JumpLanding_Index_Begin = 3,
    JumpLanding_Index_End = 3,
    RollStep_Index_Begin = 4,
    RollStep_Index_End = 7,
    EPalLandingType_MAX = 8,
};

enum class EPalLanguageType {
    JP = 0,
    EN = 1,
    ZH_HANS = 2,
    ZH_HANT = 3,
    FR = 4,
    IT = 5,
    DE = 6,
    ES = 7,
    KO = 8,
    PT_BR = 9,
    RU = 10,
    EPalLanguageType_MAX = 11,
};

enum class EPalLiftupRequestResult {
    Success = 0,
    FailedNotExistsTargetCharacter = 1,
    FailedNotExistsLiftupComponent = 2,
    FailedInvalidPlayerIdInController = 3,
    FailedInvalidDefaultCharacterInController = 4,
    FailedDisabledLiftup = 5,
    FailedInvalidRequestPlayerId = 6,
    FailedAlreadyLiftingActor = 7,
    FailedCharacterParameter = 8,
    FailedIndividualCharacterParameter = 9,
    FailedAlreadyLocked = 10,
    FailedSleeping = 11,
    EPalLiftupRequestResult_MAX = 12,
};

enum class EPalLimitVolumeFlag {
    Build = 1,
    EnemySpawn = 2,
    MapObjectSpawn = 4,
    BaseCampArea = 8,
    EPalLimitVolumeFlag_MAX = 9,
};

enum class EPalLocalizeTextCategory {
    None = 0,
    UICommon = 1,
    NpcTalk = 2,
    BaseCampWorkerEvent = 3,
    PalMonsterName = 4,
    PalHumanName = 5,
    UniqueNPCName = 6,
    PrefixName = 7,
    PalShortDescription = 8,
    PalLongDescription = 9,
    PalFirstActivatedInfo = 10,
    ItemName = 11,
    ItemDescription = 12,
    MapObjectName = 13,
    BuildObjectDescription = 14,
    BuildObjectCategory = 15,
    SkillName = 16,
    SkillDesc = 17,
    TechnologyName = 18,
    TechnologyDescription = 19,
    WorldMapRegionAndPlace = 20,
    DungeonName = 21,
    NoteDescription = 22,
    TutorialMessage = 23,
    HelpGuide = 24,
    MapRespawnPoint = 25,
    EPalLocalizeTextCategory_MAX = 26,
};

enum class EPalLocationType {
    Undefined = 0,
    Point = 1,
    PointStatic = 2,
    PointFastTravel = 3,
    PointBaseCamp = 4,
    PointPlayer = 5,
    PointMapObject = 6,
    PointCharacter = 7,
    PointDungeonPortal = 8,
    PointStaticRespawn = 9,
    PointBossTower = 10,
    DroppedCharacter = 11,
    DroppedChest = 12,
    Area = 13,
    CustomMarker = 14,
    FieldBoss = 15,
    SupplyMarker = 16,
    PointDungeonGoal = 17,
    EPalLocationType_MAX = 18,
};

enum class EPalLogContentToneType {
    Normal = 0,
    Negative = 1,
    Positive = 2,
    EPalLogContentToneType_MAX = 3,
};

enum class EPalLogFormatType {
    Text = 0,
    Json = 1,
    EPalLogFormatType_MAX = 2,
};

enum class EPalLogPriority {
    None = 0,
    Normal = 1,
    Important = 2,
    VeryImportant = 3,
    EPalLogPriority_MAX = 4,
};

enum class EPalLogType {
    None = 0,
    CaptureSuccess = 1,
    CaptureFailed_LowBallLevel = 2,
    CaptureFailed_HighHP = 3,
    CaptureFailed_BounceBall = 4,
    CaptureFailed_OutOfBall = 5,
    CaptureFailed_TowerBoss = 6,
    CaptureFailed_PlayerPal = 7,
    StartInvaderMarch = 8,
    EndInvaderMarch_Win = 9,
    EndInvaderMarch_Timeout = 10,
    DropPal = 11,
    OtomoLowHealth_Phase1 = 12,
    OtomoLowHealth_Phase2 = 13,
    OtomoLowHealth_Phase3 = 14,
    OtomoEatFood = 15,
    OtomoPalDown = 16,
    OtomoPalDeath = 17,
    OtomoPalEffectiveAttack = 18,
    OtomoPalDefeatEnemy = 19,
    GetItem = 20,
    ShippingItem = 21,
    FullInventoryNotice = 22,
    StartWorldDataAutoSave = 23,
    SuccessedWorldDataAutoSave = 24,
    FailedWorldDataAutoSave = 25,
    StartPlayerDataAutoSave = 26,
    SuccessedPlayerDataAutoSave = 27,
    FailedPlayerDataAutoSave = 28,
    WorkerPalSanityLowWarning = 29,
    WorkerPalComplateItemConvert = 30,
    WorkerPalComplateBuild = 31,
    WorkerPalStartBuild = 32,
    WorkerPalStartRepair = 33,
    WorkerPalStartWork = 34,
    WorkerPalStartWork_CollectResource = 35,
    WorkerPalStartWork_ProductResource_Deforest = 36,
    WorkerPalStartWork_ProductResource_Mining = 37,
    WorkerEvent_DestroyBuilding = 38,
    WorkerEvent_DodgeWork = 39,
    WorkerEvent_DodgeWork_Short = 40,
    WorkerEvent_DodgeWork_Sleep = 41,
    WorkerEvent_EatTooMuch = 42,
    WorkerEvent_Escape = 43,
    WorkerEvent_FightWithFriend = 44,
    WorkerEvent_OverworkDeath = 45,
    WorkerEvent_Sick = 46,
    WorkerEvent_Trantrum = 47,
    WorkerEvent_TurnFoodBox = 48,
    BaseCampTask_Progress_BuildObject = 49,
    BaseCampTask_Complete = 50,
    VisitorSpawn = 51,
    VisitorArrived = 52,
    VisitorReturn = 53,
    OverWeightInventory = 54,
    SkillTargetNotFound = 55,
    SkillNotAvailable = 56,
    SkillExecute = 57,
    SkillExecuteInBaseCamp = 58,
    SkillExecuteHealing = 59,
    SurvivorExp = 60,
    PartnerSkillExecute_Berserk = 61,
    PartnerSkillExecute_NightRunner = 62,
    PartnerSkillExecute_StatusUp = 63,
    PartnerSkillExecute_SearchDungeonGoal_Failed = 64,
    ObtainNote = 65,
    OutdoorBedNortice = 66,
    FullPalBox = 67,
    FireBaseCamp = 68,
    SupplyDropStart = 69,
    EPalLogType_MAX = 70,
};

enum class EPalLogWidgetState {
    In = 0,
    Wait = 1,
    Out = 2,
    End = 3,
    EPalLogWidgetState_MAX = 4,
};

enum class EPalMapBaseCampWorkerOrderType {
    Work = 0,
    BattleFighter = 1,
    BattleAllWorker = 2,
    EPalMapBaseCampWorkerOrderType_MAX = 3,
};

enum class EPalMapObjectChangeMeshFXType {
    None = 0,
    RockDestroyProgress = 1,
    EPalMapObjectChangeMeshFXType_MAX = 2,
};

enum class EPalMapObjectConcreteModelAccessResult {
    Success = 0,
    FailedMissing = 1,
    FailedInBuilding = 2,
    EPalMapObjectConcreteModelAccessResult_MAX = 3,
};

enum class EPalMapObjectConcreteModelModuleType {
    None = 0,
    ItemContainer = 1,
    CharacterContainer = 2,
    Workee = 3,
    Energy = 4,
    StatusObserver = 5,
    ItemStack = 6,
    Switch = 7,
    PlayerRecord = 8,
    BaseCampPassiveEffect = 9,
    PasswordLock = 10,
    RequireElementalAction = 11,
    Picking = 12,
    EPalMapObjectConcreteModelModuleType_MAX = 13,
};

enum class EPalMapObjectConcreteModelThrowableType {
    None = 0,
    Rest = 1,
    EPalMapObjectConcreteModelThrowableType_MAX = 2,
};

enum class EPalMapObjectConvertItemModelRequestResult {
    Success = 0,
    FailedInvalidRecipeId = 1,
    EPalMapObjectConvertItemModelRequestResult_MAX = 2,
};

enum class EPalMapObjectDamagableType {
    AllRecieve = 0,
    OtherGroup = 1,
    NoDamage = 2,
    EPalMapObjectDamagableType_MAX = 3,
};

enum class EPalMapObjectDefenseType {
    Wait = 0,
    StationaryLauncher = 1,
    EPalMapObjectDefenseType_MAX = 2,
};

enum class EPalMapObjectDestroyFXType {
    None = 0,
    Normal = 1,
    NormalWood = 2,
    NormalRock = 3,
    NormalMetal = 4,
    FoliageTree = 5,
    Pickup = 6,
    Pickup_Wood = 7,
    Pickup_Stone = 8,
    Pickup_Berry = 9,
    LowTree = 10,
    Rock = 11,
    FoliageTree_CherryBlossom = 12,
    Mushroom = 13,
    Glass = 14,
    EPalMapObjectDestroyFXType_MAX = 15,
};

enum class EPalMapObjectDisposeOptionType {
    NoDropItems = 0,
    NotAutoPickup = 1,
    OpenTreasureBox = 2,
    Immediately = 3,
    NotNotifyOwnerSpawnerLevelObject = 4,
    ByUnloadStage = 5,
    DropBuildMaterials = 6,
    RequireRespawnImmediately = 7,
    EPalMapObjectDisposeOptionType_MAX = 8,
};

enum class EPalMapObjectEnergyModuleStatusType {
    Providable = 0,
    Waiting = 1,
    EPalMapObjectEnergyModuleStatusType_MAX = 2,
};

enum class EPalMapObjectFoodProviderPriority {
    Normal = 0,
    Farm = 1,
    EPalMapObjectFoodProviderPriority_MAX = 2,
};

enum class EPalMapObjectGetModelOutPinType {
    Success = 0,
    Failed = 1,
    EPalMapObjectGetModelOutPinType_MAX = 2,
};

enum class EPalMapObjectInteractRestrictType {
    SameGuildOnly = 0,
    Anyone = 1,
    EPalMapObjectInteractRestrictType_MAX = 2,
};

enum class EPalMapObjectItemCollectableType {
    Pickup = 0,
    Work = 1,
    EPalMapObjectItemCollectableType_MAX = 2,
};

enum class EPalMapObjectItemContainerSlotAttribute {
    Undefined = 0,
    Input = 1,
    PublicOutput = 2,
    FoodProvidable = 3,
    CannotTransport = 4,
    EPalMapObjectItemContainerSlotAttribute_MAX = 5,
};

enum class EPalMapObjectMaterialSubType {
    None = 0,
    Wood = 1,
    Stone = 2,
    Copper = 3,
    Iron = 4,
    Platinum = 5,
    EPalMapObjectMaterialSubType_MAX = 6,
};

enum class EPalMapObjectMaterialType {
    None = 0,
    Wood = 1,
    Stone = 2,
    EPalMapObjectMaterialType_MAX = 3,
};

enum class EPalMapObjectModelConnectIndex {
    Up = 0,
    Down = 1,
    Left = 2,
    Right = 3,
    Back = 4,
    Front = 5,
    FrontLeft = 6,
    FrontRight = 7,
    BackLeft = 8,
    BackRight = 9,
    AnyPlace = 254,
    None = 255,
    EPalMapObjectModelConnectIndex_MAX = 256,
};

enum class EPalMapObjectModelInitializeExtraParameterType {
    Undefined = 0,
    Build = 1,
    SpawnedBy = 2,
    Spawner = 3,
    Item = 4,
    TreasureBox = 5,
    DropItem = 6,
    ItemDropObject = 7,
    Location = 8,
    InitialItem = 9,
    InitialCharacter = 10,
    PalEgg = 11,
    Note = 12,
    Interact = 13,
    ItemContainerAttribute = 14,
    ByPlayerUId = 15,
    DropCharacter = 16,
    InstanceId = 17,
    EPalMapObjectModelInitializeExtraParameterType_MAX = 18,
};

enum class EPalMapObjectOperationResult {
    None = 0,
    Canceled = 1,
    FailedInLimitVolume = 2,
    FailedInDungeon = 3,
    FailedOverflowBaseCampNumInGuild = 4,
    FailedOverflowBaseCampNumInWorld = 5,
    FailedTooNearOtherBaseCampArea = 6,
    FailedOtherGuildBaseCampArea = 7,
    FailedExceedMaxZ = 8,
    FailedUnderOceanPlane = 9,
    FailedCannotInstallNotInDoor = 10,
    FailedCannotInstallNotOnBase = 11,
    FailNotFoundBaseCampWorkerDirectorBelongTo = 12,
    FailedNotEnoughMaterials = 13,
    FailedInValidWeakSelf = 14,
    FailedInValidRequestHandler = 15,
    FailedCannotDismantleNotAuthenticatedPasswordLock = 16,
    FailedCannotDismantleLockedPrivateByNotLocalPlayer = 17,
    FailedNotReady = 18,
    FailNotFoundClass = 19,
    FailLackSupportedLevel = 20,
    FailNotConnectToOther = 21,
    FailedNotInstallOnBackground = 22,
    FailOverlap = 23,
    FailedIntersectOtherObject = 24,
    FailNotAttachToWall = 25,
    FailNotAttachToCeil = 26,
    FailNotFoundBuildObjectData = 27,
    FailNotAvailableBaseCampBelongTo = 28,
    FailNotFoundBaseCampBelongTo = 29,
    FailSpawnNotFoundBaseCampBelongTo = 30,
    FailedExceedMaxNumInBaseCamp = 31,
    FailedNotExistsItemProviderPlaceOn = 32,
    FailedNotFoundModel = 33,
    FailedNotBuildObject = 34,
    FailedNotFoundBuildProcess = 35,
    FailedNotBuildingState = 36,
    FailNotFoundRequestPlayerPalStorage = 37,
    FailNotEnoughPalBoxEmptySlot = 38,
    FailedNotInstallBySurface = 39,
    FailedTooSteepSlopeAngle = 40,
    FailedAccessPointCannotGrounded = 41,
    FailedChestCannotGrounded = 42,
    FailedNotCanDismantleState = 43,
    FailedNotExistRequestPlayer = 44,
    Success = 45,
    EPalMapObjectOperationResult_MAX = 46,
};

enum class EPalMapObjectPasswordLockState {
    Lock = 0,
    Unlock = 1,
    EPalMapObjectPasswordLockState_MAX = 2,
};

enum class EPalMapObjectRankUpCharacterResult {
    Success = 0,
    FailedNotValidIndividualHandle = 1,
    FailedNotValidIndividualParameter = 2,
    FailedNotValidPlayerState = 3,
    FailedNotValidPlayerPalStorage = 4,
    FailedNotExistsResourceCharacterInPalStorage = 5,
    FailedResourcePalIsFavoritePal = 6,
    EPalMapObjectRankUpCharacterResult_MAX = 7,
};

enum class EPalMapObjectSignificanceCalculationType {
    FromPlayerDistance = 0,
    FromPlayerDistanceXY = 1,
    EPalMapObjectSignificanceCalculationType_MAX = 2,
};

enum class EPalMapObjectSpawnRequestType {
    MapObject = 0,
    PlayerBuild = 1,
    EPalMapObjectSpawnRequestType_MAX = 2,
};

enum class EPalMapObjectSpawnerState {
    Init = 0,
    WaitForLoadingAround = 1,
    Active = 2,
    EPalMapObjectSpawnerState_MAX = 3,
};

enum class EPalMapObjectSwitchState {
    On = 0,
    Off = 1,
    EPalMapObjectSwitchState_MAX = 2,
};

enum class EPalMapObjectTreasureGradeType {
    Grade1 = 0,
    Grade2 = 1,
    Grade3 = 2,
    Grade4 = 3,
    Grade5 = 4,
    Grade6 = 5,
    EPalMapObjectTreasureGradeType_MAX = 6,
};

enum class EPalMapObjectType {
    OnlyExist = 0,
    Foliage = 1,
    EPalMapObjectType_MAX = 2,
};

enum class EPalMapObjectVisualEffectType {
    Burn = 0,
    EPalMapObjectVisualEffectType_MAX = 1,
};

enum class EPalMapObjectWorkerAvailableFacilityType {
    PalBed = 0,
    Amusement = 1,
    Undefined = 2,
    EPalMapObjectWorkerAvailableFacilityType_MAX = 3,
};

enum class EPalMasterDataExecPinType {
    Success = 0,
    RowNotFound = 1,
    EPalMasterDataExecPinType_MAX = 2,
};

enum class EPalMonsterControllerBaseCampLogType {
    Undefined = 0,
    SuccessFixedAssign = 1,
    FailedFixedAssignSimple = 2,
    FailedFixedAssignWithTargetWork = 3,
    FailedFixedAssignOverflowWorkers = 4,
    FailedFixedAssignNoWorkInRange = 5,
    FailedFixedAssignNotAssignableOtomo = 6,
    FailedFixedAssignNoSuitability = 7,
    FailedFixedAssignNotWantToDo = 8,
    EPalMonsterControllerBaseCampLogType_MAX = 9,
};

enum class EPalMonsterEquipWeaponSocketType {
    None = 0,
    Socket_EquipWeapon_1 = 1,
    Socket_EquipWeapon_2 = 2,
    Socket_EquipWeapon_3 = 3,
    EPalMonsterEquipWeaponSocketType_MAX = 4,
};

enum class EPalMonsterMovementType {
    GroundOnly = 0,
    Fly = 1,
    FlyAndLanding = 2,
    Swim = 3,
    SwimGroundDamage = 4,
    EPalMonsterMovementType_MAX = 5,
};

enum class EPalMovementSpeedType {
    SlowWalk = 0,
    Walk = 1,
    Run = 2,
    TransportMove = 3,
    EPalMovementSpeedType_MAX = 4,
};

enum class EPalNPCClothesType {
    None = 0,
    Mobu_A = 1,
    Mobu_B = 2,
    Mobu_C = 3,
    Mobu_D = 4,
    Mobu_E = 5,
    Pocile = 6,
    Hunter = 7,
    Shop = 8,
    EPalNPCClothesType_MAX = 9,
};

enum class EPalNPCFaceType {
    None = 0,
    Mobu_A = 1,
    Mobu_B = 2,
    Mobu_C = 3,
    Pocile = 4,
    Hunter = 5,
    Shop = 6,
    EPalNPCFaceType_MAX = 7,
};

enum class EPalNPCHairColorType {
    None = 0,
    Black = 1,
    Silver = 2,
    LightBrown = 3,
    DarkBrown = 4,
    Beige = 5,
    Gold = 6,
    Ash = 7,
    Pink = 8,
    Red = 9,
    Violet = 10,
    EPalNPCHairColorType_MAX = 11,
};

enum class EPalNPCHairStyleType {
    None = 0,
    Mobu_A = 1,
    Mobu_B = 2,
    Mobu_C = 3,
    Mobu_D = 4,
    Mobu_E = 5,
    Pocile = 6,
    Hunter = 7,
    Shop = 8,
    EPalNPCHairStyleType_MAX = 9,
};

enum class EPalNPCScaleType {
    None = 0,
    S2 = 1,
    S1 = 2,
    M = 3,
    L1 = 4,
    L2 = 5,
    EPalNPCScaleType_MAX = 6,
};

enum class EPalNPCSkinColor {
    None = 0,
    White = 1,
    ReddishLight = 2,
    Light = 3,
    Default = 4,
    YellowishBrown = 5,
    Brown = 6,
    DarkBrown = 7,
    EPalNPCSkinColor_MAX = 8,
};

enum class EPalNPCTalkCommand {
    SimpleMessages = 0,
    ChoiceYesNo = 1,
    CustomChoice = 2,
    TalkerNameChange = 3,
    CustomFunc = 4,
    CustomFuncBranch = 5,
    EPalNPCTalkCommand_MAX = 6,
};

enum class EPalNPCTalkCustomFunctionResult {
    None = 0,
    ContinueProcess = 1,
    BreakProcess = 2,
    EPalNPCTalkCustomFunctionResult_MAX = 3,
};

enum class EPalNPCTalkProceedResult {
    Failed = 0,
    CommandExecuted = 1,
    AllCommandComplete = 2,
    CommandExecutedAndContinueProcess = 3,
    EPalNPCTalkProceedResult_MAX = 4,
};

enum class EPalNPCTalkSelectedChoiceCommand {
    EndTalk = 0,
    ChangeSeqence = 1,
    CustomFunc = 2,
    EPalNPCTalkSelectedChoiceCommand_MAX = 3,
};

enum class EPalNPCTalkSelectedChoiceResult {
    ExecutedBySystem = 0,
    RequestClose = 1,
    EPalNPCTalkSelectedChoiceResult_MAX = 2,
};

enum class EPalNPCTalkUIType {
    None = 0,
    FreeTalk = 1,
    NormalShop = 2,
    WeaponShop = 3,
    PalShop = 4,
    QuestOrder = 5,
    RandomEventShop = 6,
    CollectionItemTrade_001 = 7,
    EPalNPCTalkUIType_MAX = 8,
};

enum class EPalNiagaraDataIterfaceSoundPlayerCommand {
    None = 0,
    PlaySoundOneShot = 1,
    EPalNiagaraDataIterfaceSoundPlayerCommand_MAX = 2,
};

enum class EPalObjectTypeQuery {
    Water = 0,
    Attack = 1,
    PlayerPawn = 2,
    Temperature = 3,
    SystemVolume = 4,
    LiftedupPawn = 5,
    AroundInfoCollect = 6,
    AttackHitOnly = 7,
    EPalObjectTypeQuery_MAX = 8,
};

enum class EPalOilrigType {
    Debug = 0,
    TypeA = 1,
    TypeB = 2,
    TypeC = 3,
    EPalOilrigType_MAX = 4,
};

enum class EPalOneDayTimeType {
    Undefined = 0,
    Day = 1,
    Night = 2,
    EPalOneDayTimeType_MAX = 3,
};

enum class EPalOptionGraphicsLevel {
    None = 0,
    VeryLow = 1,
    Low = 2,
    Medium = 3,
    High = 4,
    VeryHigh = 5,
    EPalOptionGraphicsLevel_MAX = 6,
};

enum class EPalOptionWorldDeathPenalty {
    None = 0,
    Item = 1,
    ItemAndEquipment = 2,
    All = 3,
    EPalOptionWorldDeathPenalty_MAX = 4,
};

enum class EPalOptionWorldDifficulty {
    None = 0,
    Easy = 1,
    Normal = 2,
    Hard = 3,
    Custom = 4,
    EPalOptionWorldDifficulty_MAX = 5,
};

enum class EPalOptionWorldMode {
    None = 0,
    Single = 1,
    ListenMulti = 2,
    Dedicated_PvE = 3,
    Dedicated_PvP = 4,
    EPalOptionWorldMode_MAX = 5,
};

enum class EPalOrganizationType {
    None = 0,
    Guild = 1,
    Police = 2,
    City = 3,
    Brigade = 4,
    TeamBlackHunter = 5,
    TeamFireCult = 6,
    TeamWelfareGroup = 7,
    MAX = 8,
};

enum class EPalOtomoPalOrderType {
    Default = 0,
    Warlike = 1,
    NotCombat = 2,
    EPalOtomoPalOrderType_MAX = 3,
};

enum class EPalPalStorageManageRightType {
    BaseCamp = 0,
    Party = 1,
    EPalPalStorageManageRightType_MAX = 2,
};

enum class EPalPartnerSkillParameterQueryTag {
    MainDamage = 0,
    EPalPartnerSkillParameterQueryTag_MAX = 1,
};

enum class EPalPartnerSkillTriggerType {
    None = 0,
    PlayerTrigger = 1,
    OpenTreasure = 2,
    EPalPartnerSkillTriggerType_MAX = 3,
};

enum class EPalPassiveAbilitySkillState {
    None = 0,
    Active = 1,
    ActivateDelay = 2,
    Inactive = 3,
    ActivateLocked = 4,
    EPalPassiveAbilitySkillState_MAX = 5,
};

enum class EPalPassivePartnerSkillState {
    None = 0,
    Active = 1,
    ActivateDelay = 2,
    Inactive = 3,
    ActivateLocked = 4,
    EPalPassivePartnerSkillState_MAX = 5,
};

enum class EPalPassiveSkillEffectTargetType {
    None = 0,
    ToSelf = 1,
    ToTrainer = 2,
    ToSelfAndTrainer = 3,
    ToBaseCampPal = 4,
    ToBuildObject = 5,
    EPalPassiveSkillEffectTargetType_MAX = 6,
};

enum class EPalPassiveSkillEffectType {
    no = 0,
    MaxHP = 1,
    MeleeAttack = 2,
    ShotAttack = 3,
    Defense = 4,
    Support = 5,
    CraftSpeed = 6,
    MoveSpeed = 7,
    Homing = 8,
    Explosive = 9,
    BulletSpeed = 10,
    BulletAccuracy = 11,
    Recoil = 12,
    ElementFire = 13,
    ElementWater = 14,
    ElementLeaf = 15,
    ElementElectricity = 16,
    ElementIce = 17,
    ElementEarth = 18,
    ElementDark = 19,
    ElementDragon = 20,
    ElementResist_Normal = 21,
    ElementResist_Fire = 22,
    ElementResist_Water = 23,
    ElementResist_Leaf = 24,
    ElementResist_Electricity = 25,
    ElementResist_Ice = 26,
    ElementResist_Earth = 27,
    ElementResist_Dark = 28,
    ElementResist_Dragon = 29,
    ElementBoost_Normal = 30,
    ElementBoost_Fire = 31,
    ElementBoost_Water = 32,
    ElementBoost_Leaf = 33,
    ElementBoost_Electricity = 34,
    ElementBoost_Ice = 35,
    ElementBoost_Earth = 36,
    ElementBoost_Dark = 37,
    ElementBoost_Dragon = 38,
    ElementAddItemDrop_Normal = 39,
    ElementAddItemDrop_Fire = 40,
    ElementAddItemDrop_Water = 41,
    ElementAddItemDrop_Leaf = 42,
    ElementAddItemDrop_Electricity = 43,
    ElementAddItemDrop_Ice = 44,
    ElementAddItemDrop_Earth = 45,
    ElementAddItemDrop_Dark = 46,
    ElementAddItemDrop_Dragon = 47,
    MoveSpeed_Ground = 48,
    MoveSpeed_Wood = 49,
    MoveSpeed_Grass = 50,
    MoveSpeed_Stone = 51,
    MoveSpeed_Water = 52,
    MoveSpeed_Snow = 53,
    MoveSpeed_Lava = 54,
    CollectItem = 55,
    Mute = 56,
    Logging = 57,
    Mining = 58,
    GainItemDrop = 59,
    CollectItemDrop = 60,
    LifeSteal = 61,
    TemperatureResist_Heat = 62,
    TemperatureResist_Cold = 63,
    TemperatureInvalid_Heat = 64,
    TemperatureInvalid_Cold = 65,
    MaxInventoryWeight = 66,
    FullStomatch_Decrease = 67,
    Sanity_Decrease = 68,
    BodyPartsWeakDamage = 69,
    NonKilling = 70,
    ItemWeightReduction = 71,
    PalExp_Increase = 72,
    PalSP_Increase = 73,
    ShopBuyPrice_Money_Increase = 74,
    ShopSellPrice_Money_Increase = 75,
    BreedSpeed = 76,
    Nocturnal = 77,
    JumpPower_Increase = 78,
    JumpCount_Increase = 79,
    PalEggHatchingSpeed = 80,
    FarmCropGrowupSpeed = 81,
    SyncroPassiveWhenCapture = 82,
    ActiveSkillCoolTime_Decrease = 83,
    EPalPassiveSkillEffectType_MAX = 84,
};

enum class EPalPassiveTriggerType {
    None = 0,
    ActiveOtomo = 1,
    Worker = 2,
    Ride = 4,
    Reserve = 8,
    InOtomo = 16,
    InBaseCamp = 32,
    Always = 64,
    EPalPassiveTriggerType_MAX = 65,
};

enum class EPalPettingSizeType {
    Small = 0,
    SmallMiddle = 1,
    Medium = 2,
    Large = 3,
    EPalPettingSizeType_MAX = 4,
};

enum class EPalPhysicalSurface {
    Default = 0,
    Ground = 1,
    Wood = 2,
    Grass = 3,
    Stone = 4,
    Water = 5,
    Snow = 6,
    Lava = 7,
    EPalPhysicalSurface_MAX = 8,
};

enum class EPalPhysicsBoneType {
    None = 0,
    AttachRope = 1,
    AttachRopeTrapLeg = 2,
    EPalPhysicsBoneType_MAX = 3,
};

enum class EPalPickingGameDifficultyType {
    Invalid = 0,
    VeryEasy = 1,
    Easy = 2,
    Normal = 3,
    Hard = 4,
    VeryHard = 5,
    EPalPickingGameDifficultyType_MAX = 6,
};

enum class EPalPickingGameState {
    Pause = 0,
    InGame = 1,
    EPalPickingGameState_MAX = 2,
};

enum class EPalPlatformType {
    Undefined = 0,
    XboxOne = 1,
    PS4 = 2,
    XboxSeries = 3,
    PS5 = 4,
    PC = 5,
    DedicatedServer = 6,
    CoopHost = 7,
    EPalPlatformType_MAX = 8,
};

enum class EPalPlayerAccountState {
    Uninitialized = 0,
    Initialized = 1,
    InNewCreation = 2,
    Login = 3,
    Logout = 4,
    EPalPlayerAccountState_MAX = 5,
};

enum class EPalPlayerBattleFinishType {
    Undefined = 0,
    Escape = 1,
    Victory = 2,
    Capture = 3,
    EPalPlayerBattleFinishType_MAX = 4,
};

enum class EPalPlayerDamageCameraShakeCategory {
    None = 0,
    Waza_S = 1,
    Waza_M = 2,
    Waza_L = 3,
    Gun_S = 4,
    Gun_M = 5,
    Gun_L = 6,
    Melee = 7,
    EPalPlayerDamageCameraShakeCategory_MAX = 8,
};

enum class EPalPlayerEquipItemSlotType {
    Head = 0,
    Body = 1,
    Accessory1 = 2,
    Accessory2 = 3,
    Shield = 4,
    Glider = 5,
    Accessory3 = 6,
    Accessory4 = 7,
    Max = 8,
};

enum class EPalPlayerInputButtonType {
    None = 0,
    OnPress = 1,
    OnRelease = 2,
    EPalPlayerInputButtonType_MAX = 3,
};

enum class EPalPlayerInventoryType {
    Common = 0,
    DropSlot = 1,
    Essential = 2,
    WeaponLoadout = 3,
    PlayerEquipArmor = 4,
    FoodEquip = 5,
    None = 6,
    EPalPlayerInventoryType_MAX = 7,
};

enum class EPalPlayerJoinResult {
    Success = 0,
    FailedInvalidLoginPlayerId = 1,
    FailedInvalidLoginPlayerCharacterHandle = 2,
    FailedDuplicateAccountCreation = 3,
    EPalPlayerJoinResult_MAX = 4,
};

enum class EPalPlayerSprintStaminaDecreaseType {
    Ignore = 0,
    OnlyBattleMode = 1,
    Always = 2,
    EPalPlayerSprintStaminaDecreaseType_MAX = 3,
};

enum class EPalRadarChartDrawType {
    Polygon = 0,
    Polygon_Bordered = 1,
    OnlyBorder = 2,
    EPalRadarChartDrawType_MAX = 3,
};

enum class EPalRagdollPresetType {
    None = 0,
    BeLiftup = 1,
    EPalRagdollPresetType_MAX = 2,
};

enum class EPalRaidBossBattleFinishType {
    Success = 0,
    TimeUp = 1,
    BaseCampDestroyed = 2,
    EPalRaidBossBattleFinishType_MAX = 3,
};

enum class EPalRaidBossBattleStartRequestResult {
    FailedNotValidBaseCampId = 0,
    FailedAlreadyStarted = 1,
    Success = 2,
    EPalRaidBossBattleStartRequestResult_MAX = 3,
};

enum class EPalRaidBossBattleStateType {
    Standy = 0,
    Combat = 1,
    Finished = 2,
    EPalRaidBossBattleStateType_MAX = 3,
};

enum class EPalRandomIncidentActionNotifyType {
    None = 0,
    RestartExcludedSpawner = 1,
    EPalRandomIncidentActionNotifyType_MAX = 2,
};

enum class EPalRandomIncidentSpawnerAreaType {
    Unknown = 0,
    Spawn = 1,
    Exclusion = 2,
    Action = 3,
    End = 4,
    EPalRandomIncidentSpawnerAreaType_MAX = 5,
};

enum class EPalRandomIncidentSpawnerStatus {
    Unknown = 0,
    Idle = 1,
    CoolDown = 2,
    Executing = 3,
    WaitPlayerOutside = 4,
    EPalRandomIncidentSpawnerStatus_MAX = 5,
};

enum class EPalRandomizerType {
    None = 0,
    Region = 1,
    All = 2,
    EPalRandomizerType_MAX = 3,
};

enum class EPalRequestSoftScriptPriorityAdd {
    SoftScript = 0,
    SoftScriptInterrupt = 1,
    SoftScript_2 = 2,
    SoftScript_3 = 3,
    SoftScript_4 = 4,
    SoftScript_5 = 5,
    SoftScript_6 = 6,
    SoftScript_7 = 7,
    SoftScript_8 = 8,
    SoftScript_9 = 9,
    EPalRequestSoftScriptPriorityAdd_MAX = 10,
};

enum class EPalRidePositionType {
    None = 0,
    HorseRide = 1,
    BiggerHorseRide = 2,
    SitRide = 3,
    BackRide = 4,
    EPalRidePositionType_MAX = 5,
};

enum class EPalSaveDataRestoreResultType {
    Success_AllSave = 0,
    Succcess_NotExistLocalSaveBackup = 1,
    Failed_NotExistWorldSaveBackup = 2,
    Failed_NotExistAllSave = 3,
    Failed_Unknown = 4,
    EPalSaveDataRestoreResultType_MAX = 5,
};

enum class EPalSaveError {
    Success = 0,
    NotFound = 1,
    Unknown = 2,
    EPalSaveError_MAX = 3,
};

enum class EPalScrollWhenFocusChanges {
    NoScroll = 0,
    InstantScroll = 1,
    AnimatedScroll = 2,
    EPalScrollWhenFocusChanges_MAX = 3,
};

enum class EPalShooterFlagContainerPriority {
    Weapon = 0,
    Ball = 1,
    EPalShooterFlagContainerPriority_MAX = 2,
};

enum class EPalShopBuyResultType {
    Successed = 0,
    Failed_InvalidBuyNum = 1,
    Failed_NotEnoughStock = 2,
    Failed_NotEnoughMoney = 3,
    Failed_NotEnoughItemSlot = 4,
    Failed_NotEnoughCharacterSlot = 5,
    Failed_ExistReservedProcess = 6,
    Failed_NotFoundItemContainer = 7,
    Failed_NotFoundPlayerInventoryData = 8,
    Failed_NotFoundPlayerMoneyData = 9,
    Failed_NotFoundProduct = 10,
    Failed_NotFoundShop = 11,
    Failed_NotFoundStoredPal = 12,
    Unknown = 13,
    EPalShopBuyResultType_MAX = 14,
};

enum class EPalShopLotteryBiomeType {
    None = 0,
    Plain = 1,
    EPalShopLotteryBiomeType_MAX = 2,
};

enum class EPalShopLotteryType {
    None = 0,
    SimpleLottery = 1,
    BiomeLottery = 2,
    EPalShopLotteryType_MAX = 3,
};

enum class EPalShopSellResultType {
    Successed = 0,
    Failed = 1,
    EPalShopSellResultType_MAX = 2,
};

enum class EPalSizeType {
    None = 0,
    XS = 1,
    S = 2,
    M = 3,
    L = 4,
    XL = 5,
    EPalSizeType_MAX = 6,
};

enum class EPalSkeletalMeshType {
    Normal = 0,
    Head = 1,
    Hair = 2,
    Body = 3,
    HairAttachAccessory = 4,
    EPalSkeletalMeshType_MAX = 5,
};

enum class EPalSkeletalTickLayer {
    Default = 0,
    Ragdoll = 1,
    EPalSkeletalTickLayer_MAX = 2,
};

enum class EPalSkinType {
    None = 0,
    Head = 1,
    Body = 2,
    Glider = 3,
    Weapon = 4,
    Pal = 5,
    EPalSkinType_MAX = 6,
};

enum class EPalSpawnRadiusType {
    S = 0,
    M = 1,
    L = 2,
    NPC = 3,
    Override = 4,
    EPalSpawnRadiusType_MAX = 5,
};

enum class EPalSpawnedCharacterType {
    Common = 0,
    Rare = 1,
    FieldBoss = 2,
    RandomDungeonBoss = 3,
    ImprisonmentBoss = 4,
    TowerBoss = 5,
    RaidBoss = 6,
    EPalSpawnedCharacterType_MAX = 7,
};

enum class EPalSpawnerPlacementType {
    Field = 0,
    FieldBoss = 1,
    Dungeon = 2,
    DungeonBoss = 3,
    ImprisonmentBoss = 4,
    EPalSpawnerPlacementType_MAX = 5,
};

enum class EPalSpecialAttackRateType {
    None = 0,
    vsWood = 1,
    vsStone = 2,
    vsWood_Raid = 3,
    vsStone_Raid = 4,
    EPalSpecialAttackRateType_MAX = 5,
};

enum class EPalSpwnerImportanceType {
    Undefined = 0,
    AllUpdate = 1,
    Near = 2,
    Mid = 3,
    Far = 4,
    EPalSpwnerImportanceType_MAX = 5,
};

enum class EPalStagePlayerState {
    Init = 0,
    WaitingStageLoad = 1,
    Login = 2,
    InExiting = 3,
    EPalStagePlayerState_MAX = 4,
};

enum class EPalStageRequestResult {
    FailedNotValidStage = 0,
    FailedNotValidPlayerUId = 1,
    FailedNotValidPlayerState = 2,
    FailedNotValidPlayerController = 3,
    FailedNotValidPlayerCharacter = 4,
    FailedNotValidLoginPlayer = 5,
    FailedNotValidNetworkPlayerComponent = 6,
    FailedPlayerIsDead = 7,
    FailedNotValidStageWorldSubsystem = 8,
    FailedGetStartPointTransform = 9,
    FailedGetReturnToFieldPointTransform = 10,
    Success = 11,
    EPalStageRequestResult_MAX = 12,
};

enum class EPalStageType {
    Undefined = 0,
    Dungeon = 1,
    BossBattle = 2,
    Arena = 3,
    EPalStageType_MAX = 4,
};

enum class EPalStatusHungerType {
    Default = 0,
    Hunger = 1,
    Starvation = 2,
    EPalStatusHungerType_MAX = 3,
};

enum class EPalStatusID {
    None = 0,
    ControlSP = 1,
    GainHP = 2,
    StepCooldown = 3,
    DrownCheck = 4,
    Poison = 5,
    UNKOTimer = 6,
    Stan = 7,
    Coma = 8,
    Sleep = 9,
    Overwork = 10,
    Happiness = 11,
    Resistance = 12,
    Moratorium = 13,
    Drown = 14,
    Dying = 15,
    ShieldRecovery = 16,
    FallDamage = 17,
    LavaDamage = 18,
    Burn = 19,
    Wetness = 20,
    Freeze = 21,
    Electrical = 22,
    Muddy = 23,
    IvyCling = 24,
    Darkness = 25,
    AttackUp = 26,
    DefenseUp = 27,
    CollectItem = 28,
    LifeSteal = 29,
    RaidBossStatusChange = 30,
    RarePalEffect = 31,
    EPalStatusID_MAX = 32,
};

enum class EPalStatusPhysicalHealthType {
    Healthful = 0,
    MinorInjury = 1,
    Severe = 2,
    Dying = 3,
    DeadBody = 4,
    CloudCemetery = 5,
    EPalStatusPhysicalHealthType_MAX = 6,
};

enum class EPalStepAxisType {
    Forward = 0,
    Back = 1,
    Right = 2,
    Left = 3,
    ForwardRight = 4,
    ForwardLeft = 5,
    BackRight = 6,
    BackLeft = 7,
    EPalStepAxisType_MAX = 8,
};

enum class EPalSupplyType {
    None = 0,
    Capsule = 1,
    Meteor = 2,
    EPalSupplyType_MAX = 3,
};

enum class EPalSupportedPlatformType {
    Unknown = 0,
    Windows = 1,
    WinGDK = 2,
    XB1 = 3,
    XSX = 4,
    Linux = 5,
    EPalSupportedPlatformType_MAX = 6,
};

enum class EPalTalentType {
    HP = 0,
    Attack = 1,
    Defense = 2,
    EPalTalentType_MAX = 3,
};

enum class EPalTraceTypeQuery {
    FluidTrace = 0,
    ReticleRayCast = 1,
    AISightRayCast = 2,
    vsGroundRayCast = 3,
    WaterPlaneRayCast = 4,
    ClimbRayCast = 5,
    RollingRayCast = 6,
    EPalTraceTypeQuery_MAX = 7,
};

enum class EPalTribeID {
    None = 0,
    Anubis = 1,
    Baphomet = 2,
    Baphomet_Dark = 3,
    Bastet = 4,
    Bastet_Ice = 5,
    Boar = 6,
    Carbunclo = 7,
    ColorfulBird = 8,
    Deer = 9,
    DrillGame = 10,
    Eagle = 11,
    ElecPanda = 12,
    Ganesha = 13,
    Garm = 14,
    Gorilla = 15,
    Hedgehog = 16,
    Hedgehog_Ice = 17,
    Kirin = 18,
    Kitsunebi = 19,
    LittleBriarRose = 20,
    Mutant = 21,
    Owl = 22,
    Penguin = 23,
    RaijinDaughter = 24,
    SharkKid = 25,
    SheepBall = 26,
    Umihebi = 27,
    Werewolf = 28,
    WindChimes = 29,
    Suzaku = 30,
    Suzaku_Water = 31,
    FireKirin = 32,
    FairyDragon = 33,
    FairyDragon_Water = 34,
    SweetsSheep = 35,
    WhiteTiger = 36,
    Alpaca = 37,
    Serpent = 38,
    Serpent_Ground = 39,
    DarkCrow = 40,
    BlueDragon = 41,
    PinkCat = 42,
    NegativeKoala = 43,
    FengyunDeeper = 44,
    VolcanicMonster = 45,
    VolcanicMonster_Ice = 46,
    GhostBeast = 47,
    RobinHood = 48,
    LazyDragon = 49,
    LazyDragon_Electric = 50,
    AmaterasuWolf = 51,
    LizardMan = 52,
    Blueplatypus = 53,
    BlackFurDragon = 54,
    BeardedDragon = 55,
    BirdDragon = 56,
    BirdDragon_Ice = 57,
    PinkKangaroo = 58,
    ChickenPal = 59,
    FlowerDinosaur = 60,
    FlowerDinosaur_Electric = 61,
    ElecCat = 62,
    IceHorse = 63,
    IceHorse_Dark = 64,
    GrassMammoth = 65,
    CatVampire = 66,
    SakuraSaurus = 67,
    SakuraSaurus_Water = 68,
    Horus = 69,
    KingBahamut = 70,
    BerryGoat = 71,
    IceDeer = 72,
    BlackGriffon = 73,
    WhiteMoth = 74,
    CuteFox = 75,
    FoxMage = 76,
    PinkLizard = 77,
    WaterLizard = 78,
    ElecLion = 79,
    GuardianDog = 80,
    GrassDragon = 81,
    WizardOwl = 82,
    Kelpie = 83,
    NegativeOctopus = 84,
    CowPal = 85,
    Yeti = 86,
    Yeti_Grass = 87,
    VioletFairy = 88,
    HawkBird = 89,
    FlowerRabbit = 90,
    LilyQueen = 91,
    LilyQueen_Dark = 92,
    QueenBee = 93,
    SoldierBee = 94,
    CatBat = 95,
    GrassPanda = 96,
    GrassPanda_Electric = 97,
    FlameBuffalo = 98,
    ThunderDog = 99,
    CuteMole = 100,
    BlackMetalDragon = 101,
    GrassRabbitMan = 102,
    IceFox = 103,
    JetDragon = 104,
    DreamDemon = 105,
    Monkey = 106,
    Manticore = 107,
    Manticore_Dark = 108,
    KingAlpaca = 109,
    PlantSlime = 110,
    DarkMutant = 111,
    MopBaby = 112,
    MopKing = 113,
    CatMage = 114,
    PinkRabbit = 115,
    ThunderBird = 116,
    HerculesBeetle = 117,
    SaintCentaur = 118,
    NightFox = 119,
    CaptainPenguin = 120,
    WeaselDragon = 121,
    SkyDragon = 122,
    HadesBird = 123,
    RedArmorBird = 124,
    Ronin = 125,
    FlyingManta = 126,
    BlackCentaur = 127,
    FlowerDoll = 128,
    NaughtyCat = 129,
    CuteButterfly = 130,
    DarkScorpion = 131,
    ThunderDragonMan = 132,
    WoolFox = 133,
    SifuDog = 134,
    TentacleTurtle = 135,
    GoldenHorse = 136,
    BadCatgirl = 137,
    BrownRabbit = 138,
    FeatherOstrich = 139,
    WingGolem = 140,
    ScorpionMan = 141,
    BlueberryFairy = 142,
    LazyCatfish = 143,
    Deer_Ground = 144,
    FireKirin_Dark = 145,
    KingAlpaca_Ice = 146,
    RobinHood_Ground = 147,
    GrassMammoth_Ice = 148,
    Kelpie_Fire = 149,
    SharkKid_Fire = 150,
    LizardMan_Fire = 151,
    LavaGirl = 152,
    FlameBambi = 153,
    Umihebi_Fire = 154,
    WindChimes_Ice = 155,
    NightLady = 156,
    VolcanoDragon = 157,
    DarkAlien = 158,
    DarkMechaDragon = 159,
    LeafPrincess = 160,
    GhostRabbit = 161,
    NightBlueHorse = 162,
    WhiteAlienDragon = 163,
    WhiteShieldDragon = 164,
    MushroomDragon = 165,
    SmallArmadillo = 166,
    BlackPuppy = 167,
    KendoFrog = 168,
    CandleGhost = 169,
    WhiteDeer = 170,
    KingWhale = 171,
    MysteryMask = 172,
    HoodGhost = 173,
    Sekhmet = 174,
    ElecLizard = 175,
    MoonQueen = 176,
    NightLady_Dark = 177,
    GrimGirl = 178,
    PurpleSpider = 179,
    BlueThunderHorse = 180,
    RockBeast = 181,
    KingBahamut_Dragon = 182,
    HerculesBeetle_Ground = 183,
    Gorilla_Ground = 184,
    HadesBird_Electric = 185,
    MushroomDragon_Dark = 186,
    DarkScorpion_Ground = 187,
    Ronin_Dark = 188,
    CatMage_Fire = 189,
    FoxMage_Dark = 190,
    SkyDragon_Grass = 191,
    WeaselDragon_Fire = 192,
    OctopusGirl = 193,
    MimicDog = 194,
    IceNarwhal = 195,
    JellyfishFairy = 196,
    Human = 197,
    EPalTribeID_MAX = 198,
};

enum class EPalTutorialTriggerConditionType {
    None = 0,
    GetItem = 1,
    MeetBuildRequirement = 2,
    NewPal = 3,
    SamePal = 4,
    PalCount = 5,
    HighLevel = 6,
    RarePal = 7,
    CaptureFail = 8,
    OverWeight = 9,
    Night = 10,
    PalDeath = 11,
    BuildAppointment = 12,
    SummonCampPal = 13,
    LearnSkill = 14,
    AttackNoWeapon = 15,
    ObtainNote = 16,
    LevelUp = 17,
    Hunger = 18,
    PalHunger = 19,
    SAN = 20,
    Sick = 21,
    SkipWork = 22,
    EPalTutorialTriggerConditionType_MAX = 23,
};

enum class EPalTutorialTriggerType {
    None = 0,
    AddItem = 1,
    IndividualParam = 2,
    PlayerDeath = 3,
    Capture = 4,
    Common = 5,
    EPalTutorialTriggerType_MAX = 6,
};

enum class EPalUIConditionType {
    None = 0,
    Happy = 1,
    Unhappy = 2,
    MinorInjury = 3,
    Severe = 4,
    Dying = 5,
    Hunger = 6,
    Starvation = 7,
    Cold = 8,
    Sprain = 9,
    Bulimia = 10,
    GastricUlcer = 11,
    Fracture = 12,
    Weakness = 13,
    DepressionSprain = 14,
    DisturbingElement = 15,
    EPalUIConditionType_MAX = 16,
};

enum class EPalUIConvertItemRequestStartResponse {
    Enable = 0,
    FailedNotSelectedRecipe = 1,
    FailedNotExistConcreteModel = 2,
    FailedNotExistEnergyModule = 3,
    FailedNotEnoughItems = 4,
    FailedNotEnoughEnergy = 5,
    EPalUIConvertItemRequestStartResponse_MAX = 6,
};

enum class EPalUIFixedAssignManageListSortType {
    RadialIndex = 0,
    Suitability = 1,
    EPalUIFixedAssignManageListSortType_MAX = 2,
};

enum class EPalUIJoinGameInputCodeType {
    Password = 0,
    InviteCode = 1,
    EPalUIJoinGameInputCodeType_MAX = 2,
};

enum class EPalUILiftSlotType {
    None = 0,
    Item = 1,
    CharacterHandle = 2,
    EPalUILiftSlotType_MAX = 3,
};

enum class EPalUIPalCharacterRankUpRequestResult {
    Success = 0,
    FailedNotValidMapObject = 1,
    FailedNotSetTarget = 2,
    FailedCannotRankUp = 3,
    FailedNotEnoughResources = 4,
    EPalUIPalCharacterRankUpRequestResult_MAX = 5,
};

enum class EPalUIPalCharacterRankUpSelectMode {
    SelectReferenceSlot = 0,
    SelectIndividualSlot = 1,
    EPalUIPalCharacterRankUpSelectMode_MAX = 2,
};

enum class EPalUIPalCharacterRankUpSelectResourceType {
    Newer = 0,
    Older = 1,
    EPalUIPalCharacterRankUpSelectResourceType_MAX = 2,
};

enum class EPalUIPaldexPanelDetailType {
    None = 0,
    NotEncount = 1,
    Encounted = 2,
    Captured = 3,
    EPalUIPaldexPanelDetailType_MAX = 4,
};

enum class EPalUIRewardDisplayType {
    Default = 0,
    GetItem = 1,
    HatchedPal = 2,
    FastTravel = 3,
    DefeatBoss = 4,
    UnlockHardMode = 5,
    EPalUIRewardDisplayType_MAX = 6,
};

enum class EPalUISelectNumResult {
    Canceled = 0,
    Complate = 1,
    EPalUISelectNumResult_MAX = 2,
};

enum class EPalUIServerListFilterType {
    Official = 0,
    Community = 1,
    History = 2,
    EPalUIServerListFilterType_MAX = 3,
};

enum class EPalUIServerListSortType {
    Latest = 0,
    DaysAsc = 1,
    DaysDesc = 2,
    CurrentPlayerAsc = 3,
    CurrentPlayerDesc = 4,
    EPalUIServerListSortType_MAX = 5,
};

enum class EPalUIWorkerCommentType {
    None = 0,
    Normal = 1,
    Normal_Craftsman = 2,
    Normal_Sabotage = 3,
    Dying = 4,
    Hungry_Half = 5,
    Hungry_Low = 6,
    Hungry_Starvation = 7,
    LowSanity_Half = 8,
    LowSanity_Warning = 9,
    LowSanity_Emergency = 10,
    Illnesses = 11,
    Injuries = 12,
    Bulimia = 13,
    Weakness = 14,
    DisturbingElement = 15,
    DodgeWork = 16,
    DodgeWork_Short = 17,
    DodgeWork_Sleep = 18,
    EatTooMuch = 19,
    Trantrum = 20,
    EPalUIWorkerCommentType_MAX = 21,
};

enum class EPalVisualEffectID {
    None = 0,
    CaptureEmissive = 1,
    SpawnFromBallEmissive = 2,
    ReturnToBallEmissive = 3,
    FadeOut = 4,
    FadeIn = 5,
    PalOutlineFadeIn = 6,
    PalOutlineFadeOut = 7,
    PalBattleOutline = 8,
    Poison = 9,
    PowerUp = 10,
    DeadEffect = 11,
    FireCondition = 12,
    WaterCondition = 13,
    IceCondition = 14,
    ElectricityCondition = 15,
    EarthCondition = 16,
    LeafCondition = 17,
    DarkCondition = 18,
    Swimming = 19,
    CameraVignette = 20,
    PalEffectFadeIn = 21,
    PalEffectFadeOut = 22,
    RarePal = 23,
    FunnelStartEmissive = 24,
    FunnelEndEmissive = 25,
    SelfDestructEmissive = 26,
    Mosaic = 27,
    ChangeElement_Ice = 28,
    ChangeElement_Normal = 29,
    ChangeElement_Fire = 30,
    ChangeElement_Water = 31,
    ChangeElement_Leaf = 32,
    ChangeElement_Electricity = 33,
    ChangeElement_Earth = 34,
    ChangeElement_Dark = 35,
    ChangeElement_Dragon = 36,
    DebugRefresh = 37,
    EPalVisualEffectID_MAX = 38,
};

enum class EPalWalkableFloorAnglePriority {
    None = 0,
    Default = 1,
    Ride = 2,
    Action = 3,
    EPalWalkableFloorAnglePriority_MAX = 4,
};

enum class EPalWazaCategory {
    Melee = 0,
    Shot = 1,
    Support = 2,
    EPalWazaCategory_MAX = 3,
};

enum class EPalWazaID {
    None = 0,
    Human_Punch = 1,
    WorkAttack = 2,
    Throw = 3,
    Scratch = 4,
    EnergyShot = 5,
    Unique_Anubis_LowRoundKick = 6,
    Unique_Anubis_GroundPunch = 7,
    Unique_Anubis_Tackle = 8,
    Unique_Deer_PushupHorn = 9,
    HyperBeam = 10,
    PowerShot = 11,
    PowerBall = 12,
    Unique_Garm_Bite = 13,
    Intimidate = 14,
    Unique_Boar_Tackle = 15,
    Unique_PinkCat_CatPunch = 16,
    Unique_FlowerDinosaur_Whip = 17,
    Unique_SheepBall_Roll = 18,
    Unique_ChickenPal_ChickenPeck = 19,
    Unique_Gorilla_GroundPunch = 20,
    Unique_Grassmammoth_Earthquake = 21,
    AirCanon = 22,
    Unique_GrassPanda_MusclePunch = 23,
    Unique_RobinHood_BowSnipe = 24,
    Unique_Alpaca_Tackle = 25,
    Unique_KingAlpaca_BodyPress = 26,
    Unique_Werewolf_Scratch = 27,
    Unique_FengyunDeeper_CloudTempest = 28,
    Unique_Baphomet_SwallowKite = 29,
    Unique_HerculesBeetle_BeetleTackle = 30,
    Unique_HawkBird_Storm = 31,
    Unique_Eagle_GlidingNail = 32,
    SelfDestruct = 33,
    SelfDestruct_Bee = 34,
    SelfExplosion = 35,
    FireBlast = 36,
    Flamethrower = 37,
    FireBall = 38,
    FlareArrow = 39,
    FireSeed = 40,
    Unique_Horus_FlareBird = 41,
    FlareTornado = 42,
    Inferno = 43,
    Unique_FireKirin_Tackle = 44,
    Unique_AmaterasuWolf_FireCharge = 45,
    Unique_VolcanicMonster_MagmaAttack = 46,
    Unique_FlameBuffalo_FlameHorn = 47,
    Eruption = 48,
    FlameWall = 49,
    FlameFunnel = 50,
    WaterGun = 51,
    WaterWave = 52,
    HydroPump = 53,
    WaterBall = 54,
    TidalWave = 55,
    AquaJet = 56,
    BubbleShot = 57,
    AcidRain = 58,
    Unique_BluePlatypus_Toboggan = 59,
    WindCutter = 60,
    GrassTornado = 61,
    SolarBeam = 62,
    SeedMachinegun = 63,
    SeedMine = 64,
    RootAttack = 65,
    SpecialCutter = 66,
    Unique_QueenBee_SpinLance = 67,
    ThunderRain = 68,
    ThunderBall = 69,
    LineThunder = 70,
    CrossThunder = 71,
    ThreeThunder = 72,
    ElecWave = 73,
    Thunderbolt = 74,
    ThunderFunnel = 75,
    SpreadPulse = 76,
    LockonLaser = 77,
    LightningStrike = 78,
    Unique_ElecPanda_ElecScratch = 79,
    Unique_Kirin_LightningTackle = 80,
    IceMissile = 81,
    BlizzardLance = 82,
    SnowStorm = 83,
    IcicleThrow = 84,
    Unique_IceHorse_IceBladeAttack = 85,
    IceBlade = 86,
    SandTornado = 87,
    ThrowRock = 88,
    RockLance = 89,
    MudShot = 90,
    StoneShotgun = 91,
    Unique_DrillGame_ShellAttack = 92,
    DarkLaser = 93,
    DarkWave = 94,
    ShadowBall = 95,
    Psychokinesis = 96,
    PoisonShot = 97,
    GhostFlame = 98,
    Unique_DarkCrow_TelePoke = 99,
    DragonMeteor = 100,
    DragonBreath = 101,
    DragonWave = 102,
    DragonCanon = 103,
    Unique_FairyDragon_FairyTornado = 104,
    Funnel_DreamDemon = 105,
    Funnel_RaijinDaughter = 106,
    StardustArrow = 107,
    Tremor = 108,
    FrostBreath = 109,
    DiamondFall = 110,
    BeamSlicer = 111,
    Commet = 112,
    DarkBall = 113,
    DarkFog = 114,
    PoisonFog = 115,
    DarkLegion = 116,
    DarkCanon = 117,
    DarkArrow = 118,
    DarkPulse = 119,
    DarkTornado = 120,
    Apocalypse = 121,
    StarMine = 122,
    AirBlade = 123,
    HolyBlast = 124,
    RootLance = 125,
    LeafWind = 126,
    SeedBurst = 127,
    LineGeyser = 128,
    WallSplash = 129,
    TriSpark = 130,
    ThunderStorm = 131,
    SandTwister = 132,
    IcicleLine = 133,
    FrostBeam = 134,
    BlizzardFlower = 135,
    ThreeCommet = 136,
    CommetRain = 137,
    BlastCanon = 138,
    ChargeCanon = 139,
    RangeThunder = 140,
    Railbolt = 141,
    ShokeiLaser = 142,
    BubbleShower = 143,
    WaterBalloon = 144,
    ChaosLaser = 145,
    IciclePierce = 146,
    DoubleIcicleThrow = 147,
    IceAge = 148,
    RaidCutter = 149,
    WindEdge = 150,
    GrassTyphoon = 151,
    SeedShotgun = 152,
    FlareTwister = 153,
    TripleCannon = 154,
    TrisRing = 155,
    Unique_BirdDragon_FireBreath = 156,
    Unique_BlackMetalDragon_FirePunch = 157,
    Unique_DarkScorpion_Pierce = 158,
    Unique_GhostBeast_Tossin = 159,
    Unique_JetDragon_JumpBeam = 160,
    Unique_ThunderBird_ThunderStorm = 161,
    Unique_Yeti_SnowBall = 162,
    Unique_NaughtyCat_CatPress = 163,
    Unique_IceDeer_IceHorn = 164,
    Unique_KingBahamut_AirCrash = 165,
    Unique_Manticore_InfernoStrike = 166,
    Unique_SoldierBee_NeedleLance = 167,
    Unique_ThunderDog_InazumaShorai = 168,
    Unique_BlackCentaur_TwoSpearRushes = 169,
    Unique_BlackGriffon_TackleLaser = 170,
    Unique_SakuraSaurus_SideTackle = 171,
    Unique_ThunderDragonMan_ThunderSwordAttack = 172,
    Unique_RedArmorBird_TriplePeck = 173,
    Unique_CaptainPenguin_BodySlide = 174,
    Unique_Ronin_Iai = 175,
    Unique_GrassRabbitMan_GrassRoundKick = 176,
    Unique_SaintCentaur_OneSpearRushes = 177,
    Unique_Umihebi_WindingTackle = 178,
    Unique_WeaselDragon_FlyingTackle = 179,
    Unique_WhiteTiger_IceScratch = 180,
    Unique_Baphomet_Dark_DarkKite = 181,
    Unique_BirdDragon_Ice_IceBreath = 182,
    Unique_FireKirin_Dark_DarkTossin = 183,
    Unique_VolcanicMonster_Ice_IceAttack = 184,
    Unique_IceHorse_Dark_DarkBladeAttack = 185,
    Unique_Yeti_Grass_GrassBall = 186,
    Unique_GrassPanda_Electric_ElectricPunch = 187,
    Unique_NightLady_WarpBeam = 188,
    Unique_NightLady_WarpBeam_Straight = 189,
    Unique_NightLady_FlameNightmare = 190,
    Unique_MoonQueen_MoonBeam = 191,
    Unique_MoonQueen_MoonBlade = 192,
    Unique_KingBahamut_ArmSmash = 193,
    Unique_WingGolem_RoundCutter = 194,
    Unique_ScorpionMan_Uppercut = 195,
    Unique_FeatherOstrich_Tossin = 196,
    Unique_DarkAlien_JumpScractch = 197,
    Unique_SifuDog_Counter = 198,
    Unique_ThunderDragonMan_NumerousSwordAttack = 199,
    Unique_ElecPanda_GatlingAttack = 200,
    Unique_LilyQueen_LilyHealing = 201,
    Unique_LilyQueen_WindBarrier = 202,
    Unique_Horus_PerfectStorm = 203,
    Unique_BlackGriffon_TackleLaser2 = 204,
    Unique_MoonQueen_IceMoonBlade = 205,
    Reserve_52 = 206,
    Reserve_53 = 207,
    Reserve_54 = 208,
    Reserve_55 = 209,
    Reserve_56 = 210,
    Reserve_57 = 211,
    Reserve_58 = 212,
    Reserve_59 = 213,
    Reserve_60 = 214,
    Reserve_61 = 215,
    Reserve_62 = 216,
    Reserve_63 = 217,
    Reserve_64 = 218,
    Reserve_65 = 219,
    Reserve_66 = 220,
    Reserve_67 = 221,
    Reserve_68 = 222,
    Reserve_69 = 223,
    Reserve_70 = 224,
    Reserve_71 = 225,
    Reserve_72 = 226,
    Reserve_73 = 227,
    Reserve_74 = 228,
    Reserve_75 = 229,
    Reserve_76 = 230,
    Reserve_77 = 231,
    Reserve_78 = 232,
    Reserve_79 = 233,
    Reserve_80 = 234,
    Reserve_81 = 235,
    Reserve_82 = 236,
    Reserve_83 = 237,
    Reserve_84 = 238,
    Reserve_85 = 239,
    Reserve_86 = 240,
    Reserve_87 = 241,
    Reserve_88 = 242,
    Reserve_89 = 243,
    Reserve_90 = 244,
    Reserve_91 = 245,
    Reserve_92 = 246,
    Reserve_93 = 247,
    Reserve_94 = 248,
    Reserve_95 = 249,
    Reserve_96 = 250,
    Reserve_97 = 251,
    Reserve_98 = 252,
    Reserve_99 = 253,
    MAX = 254,
};

enum class EPalWeaponType {
    None = 0,
    ThrowObject = 1,
    Handgun = 2,
    AssaultRifle = 3,
    Shotgun = 4,
    SniperRifle = 5,
    RocketLauncher = 6,
    MeleeWeapon = 7,
    Bow = 8,
    BowGun = 9,
    FlameThrower = 10,
    GatlingGun = 11,
    Liftup = 12,
    LaserRifle = 13,
    MissileLauncher = 14,
    GrenadeLauncher = 15,
    Katana = 16,
    MAX = 17,
};

enum class EPalWeatherConditionType {
    Undefined = 0,
    Sun = 1,
    Cloud = 2,
    Rain = 3,
    Thunder = 4,
    Snow = 5,
    Fog = 6,
    Storm = 7,
    Snowstorm = 8,
    EPalWeatherConditionType_MAX = 9,
};

enum class EPalWidgetBlueprintType {
    Undefined = 0,
    Dialog = 1,
    MonsterDetail = 2,
    WorldMap = 3,
    ConvertItemDetail = 4,
    CharacterRankUp = 5,
    RecoverOtomo = 6,
    ItemChest = 7,
    WorkerRadialMenu = 8,
    FoodBox = 9,
    SelectItem_PlayerInventory = 10,
    PlayerStatusOperation = 11,
    PalStatusOperation = 12,
    CommonReward = 13,
    MapObjectSecuritySetting = 14,
    PasswordSetting = 15,
    BaseCampWorkHard = 16,
    WorkSuitabilityPreference = 17,
    BaseCampWorkFixedAssignManage = 18,
    ItemChestPreference = 19,
    CutsceneOverlay = 20,
    MapObjectCommonCharacterContainer = 21,
    PickingGame = 22,
    ArenaPalSelect = 23,
    EPalWidgetBlueprintType_MAX = 24,
};

enum class EPalWidgetInputMode {
    Default = 0,
    GameAndMenu = 1,
    Game = 2,
    Menu = 3,
    EPalWidgetInputMode_MAX = 4,
};

enum class EPalWorkAssignOptionType {
    HigherPriorityThanSleep = 0,
    EPalWorkAssignOptionType_MAX = 1,
};

enum class EPalWorkAssignRequirementWorkerFilter {
    InSameMapObject = 0,
    EPalWorkAssignRequirementWorkerFilter_MAX = 1,
};

enum class EPalWorkAssignRequirementWorkerPriority {
    Normal = 0,
    WorkSpeedASC = 1,
    WorkSpeedDESC = 2,
    EPalWorkAssignRequirementWorkerPriority_MAX = 3,
};

enum class EPalWorkAssignType {
    None = 0,
    Work = 1,
    WorkAttack = 2,
    Defense = 3,
    EPalWorkAssignType_MAX = 4,
};

enum class EPalWorkAssignableCheckResult {
    WorkerEvent = 0,
    Dead = 1,
    Sleeping = 2,
    RecoverHungry = 3,
    NotSuitable = 4,
    NotAssignableOtomo = 5,
    NotValidIndividualCharacterParameter = 6,
    CannotReviveSelf = 7,
    NotExistsMapObject = 8,
    MapObjectEffect = 9,
    Enable = 10,
    EPalWorkAssignableCheckResult_MAX = 11,
};

enum class EPalWorkAssignableFixedType {
    Both = 0,
    FreeOnly = 1,
    FixedOnly = 2,
    Cannot = 3,
    EPalWorkAssignableFixedType_MAX = 4,
};

enum class EPalWorkBehaviourType {
    Undefined = 0,
    StackAmount = 1,
    Participate = 2,
    EPalWorkBehaviourType_MAX = 3,
};

enum class EPalWorkDefenseCombatType {
    None = 0,
    Wait = 1,
    Gunner = 2,
    EPalWorkDefenseCombatType_MAX = 3,
};

enum class EPalWorkProgressState {
    Init = 0,
    Workable = 1,
    NotWorkable = 2,
    Finish = 3,
    Dispose = 4,
    EPalWorkProgressState_MAX = 5,
};

enum class EPalWorkRepairState {
    None = 0,
    PathFindByOwner = 1,
    PathFindByConnector = 2,
    ApproachToChest = 3,
    ApproachToOwner = 4,
    ApproachToConnectOwner = 5,
    InProgress = 6,
    EPalWorkRepairState_MAX = 7,
};

enum class EPalWorkRequestResult {
    Success = 0,
    FailedNotFoundBaseCamp = 1,
    FailedNotFoundOwnerMapObject = 2,
    FailedNotFoundWork = 3,
    FailedNotFoundWorkAssign = 4,
    FailedNotFoundWorkAssignLocation = 5,
    FailedDisableToAssignForAssignInfo = 6,
    FailedOverflowAssignCount = 7,
    FailedCharacterHandleMissing = 8,
    FailedCharacterParameterMissing = 9,
    FailedNotFoundCharacter = 10,
    FailedNotFoundCharacterAIController = 11,
    FailedNotMatchWorkType = 12,
    FailedNotWorkBase = 13,
    FailedNotSameWorker = 14,
    FailedNotFoundNetworkTransmitter = 15,
    FailedInvokeingInClientForServerInternalFunction = 16,
    FailedTransportNotExistDirector = 17,
    FailedTransportNotExistPathToMoveFor = 18,
    UnassignTargetWork = 19,
    EPalWorkRequestResult_MAX = 20,
};

enum class EPalWorkSuitability {
    None = 0,
    EmitFlame = 1,
    Watering = 2,
    Seeding = 3,
    GenerateElectricity = 4,
    Handcraft = 5,
    Collection = 6,
    Deforest = 7,
    Mining = 8,
    OilExtraction = 9,
    ProductMedicine = 10,
    Cool = 11,
    Transport = 12,
    MonsterFarm = 13,
    Anyone = 14,
    MAX = 15,
};

enum class EPalWorkTickResult {
    Continue = 0,
    WaitForWorkable = 1,
    Terminate = 2,
    EPalWorkTickResult_MAX = 3,
};

enum class EPalWorkTransformType {
    Undefined = 0,
    Static = 1,
    MapObject = 2,
    Character = 3,
    EPalWorkTransformType_MAX = 4,
};

enum class EPalWorkTransportItemType {
    TakeOut = 0,
    PutIn = 1,
    EPalWorkTransportItemType_MAX = 2,
};

enum class EPalWorkType {
    None = 0,
    CommonTemp = 1,
    ReviveCharacter = 2,
    Architecture = 3,
    RepairBuildObject = 4,
    FarmHarvest = 5,
    HarvestLevelObject = 6,
    TransportFoodItemInBaseCamp = 7,
    Seeding = 8,
    Watering = 9,
    Cooking = 10,
    TransportDisposableItemInBaseCamp = 11,
    ConvertItem = 12,
    ProductItem = 13,
    Smelting = 14,
    ProductMedicine = 15,
    TransportItemInBaseCamp = 16,
    CollectResourcePickable = 17,
    ProductResource_Deforest = 18,
    ProductResource_Mining = 19,
    ProductResource_Deforest_OnFacility = 20,
    ProductResource_Mining_OnFacility = 21,
    GenerateEnergy = 22,
    Ignition = 23,
    Defense = 24,
    BreedFarm = 25,
    MonsterFarm = 26,
    ExtinguishBurn = 27,
    Cool = 28,
    Watering_Farm = 29,
    Attack = 30,
    CollectItemToStorage = 31,
    TransportItem = 32,
    CollectResource = 33,
    GrowupPromotion = 34,
    EPalWorkType_MAX = 35,
};

enum class EPalWorkWorkerState {
    None = 0,
    Reserve = 1,
    Working = 2,
    Leave = 3,
    EPalWorkWorkerState_MAX = 4,
};

enum class EPalWorkWorkerWorkingState {
    Wait = 0,
    ApproachTo = 1,
    Working = 2,
    WaitForWorkable = 3,
    EPalWorkWorkerWorkingState_MAX = 4,
};

enum class EPalWorkableType {
    Illegal = 0,
    Progress = 1,
    CollectItem = 2,
    TransportItem = 3,
    TransportItemInBaseCamp = 4,
    ReviveCharacter = 5,
    CollectResource = 6,
    LevelObject = 7,
    Repair = 8,
    Defense = 9,
    BootUp = 10,
    OnlyJoin = 11,
    OnlyJoinAndWalkAround = 12,
    RemoveMapObjectEffect = 13,
    MonsterFarm = 14,
    DeforestFoliage = 15,
    EPalWorkableType_MAX = 16,
};

enum class EPalWorkerRadialMenuResult {
    Cancel = 0,
    Feed = 1,
    ShowDetail = 2,
    MoveToBox = 3,
    MoveToOtomo = 4,
    Pet = 5,
    EPalWorkerRadialMenuResult_MAX = 6,
};

enum class EPalWorldBaseInfoSaveDataType {
    NoProblem = 0,
    NotExistBaseInfo = 1,
    EPalWorldBaseInfoSaveDataType_MAX = 2,
};

enum class EPalWorldHUDWidgetBlueprintType {
    Undefined = 0,
    ConvertItem = 1,
    ProductItem = 2,
    FarmCrop = 3,
    FarmBlockV2 = 4,
    BuildProgress = 5,
    LackElectricity = 6,
    RecoverPal = 7,
    HatchingPalEgg = 8,
    GenerateEnergy = 9,
    HeadupWantFood = 10,
    HeadupPossessItem = 11,
    HeadupInvader = 12,
    BossEntryWait = 13,
    BreedFarm = 14,
    MapObjectHP = 15,
    CommonWorkRequirement = 16,
    EPalWorldHUDWidgetBlueprintType_MAX = 17,
};

enum class EPalWorldMapType {
    Normal = 0,
    RealtimeCapture = 1,
    EPalWorldMapType_MAX = 2,
};

enum class EPalWorldSecurityLawTriggerType {
    Undefined = 0,
    Item_Move = 1,
    Character_Damaged = 2,
    Character_Dead = 3,
    Area_Invasion = 4,
    EPalWorldSecurityLawTriggerType_MAX = 5,
};

enum class ESequentialProcessState {
    Init = 0,
    InProgress = 1,
    Complete = 2,
    Failed = 3,
    ESequentialProcessState_MAX = 4,
};

enum class EWeaponAnimationPoseType {
    None = 0,
    Stand = 1,
    Crouch = 2,
    Riding = 3,
    EWeaponAnimationPoseType_MAX = 4,
};

enum class EWeaponAnimationType {
    None = 0,
    PullTrigger = 1,
    Aiming = 2,
    Shoot = 3,
    EWeaponAnimationType_MAX = 4,
};

enum class EWeaponCoopType {
    None = 0,
    RapidFireWeapon = 1,
    NearRangeWeapon = 2,
    FarRangeWeapon = 3,
    SupportWeapon = 4,
    EWeaponCoopType_MAX = 5,
};

enum class EWeaponNotifyType {
    None = 0,
    Shoot = 1,
    ThrowRequest = 2,
    RequestReload = 3,
    ShootComplated = 4,
    EWeaponNotifyType_MAX = 5,
};

enum class EWeaponPlaySoundType {
    None = 0,
    OnStartAim = 1,
    OnEndAim = 2,
    OnAttach = 3,
    OnDetach = 4,
    OnThrow = 5,
    EWeaponPlaySoundType_MAX = 6,
};

