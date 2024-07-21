enum class ELoginStatusType {
    NotLoggedIn = 0,
    UsingLocalProfile = 1,
    LoggedIn = 2,
    ELoginStatusType_MAX = 3,
};

enum class JoinSessionResultType {
    Success = 0,
    SessionIsFull = 1,
    SessionDoesNotExist = 2,
    CouldNotRetrieveAddress = 3,
    AlreadyInSession = 4,
    UnknownError = 5,
    JoinSessionResultType_MAX = 6,
};

