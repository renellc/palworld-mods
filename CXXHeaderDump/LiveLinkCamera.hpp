#ifndef UE4SS_SDK_LiveLinkCamera_HPP
#define UE4SS_SDK_LiveLinkCamera_HPP

struct FLiveLinkCameraControllerUpdateFlags
{
    bool bApplyFieldOfView;                                                           // 0x0000 (size: 0x1)
    bool bApplyAspectRatio;                                                           // 0x0001 (size: 0x1)
    bool bApplyFocalLength;                                                           // 0x0002 (size: 0x1)
    bool bApplyProjectionMode;                                                        // 0x0003 (size: 0x1)
    bool bApplyFilmBack;                                                              // 0x0004 (size: 0x1)
    bool bApplyAperture;                                                              // 0x0005 (size: 0x1)
    bool bApplyFocusDistance;                                                         // 0x0006 (size: 0x1)

}; // Size: 0x7

class ULiveLinkCameraController : public ULiveLinkControllerBase
{
    bool bUseCameraRange;                                                             // 0x0068 (size: 0x1)
    FLensFilePicker LensFilePicker;                                                   // 0x0070 (size: 0x10)
    FLiveLinkCameraControllerUpdateFlags UpdateFlags;                                 // 0x0080 (size: 0x7)

}; // Size: 0xC8

#endif
