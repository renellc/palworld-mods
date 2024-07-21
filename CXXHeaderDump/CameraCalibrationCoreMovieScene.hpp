#ifndef UE4SS_SDK_CameraCalibrationCoreMovieScene_HPP
#define UE4SS_SDK_CameraCalibrationCoreMovieScene_HPP

class UMovieSceneLensComponentSection : public UMovieSceneHookSection
{
    bool bReapplyNodalOffset;                                                         // 0x0108 (size: 0x1)
    class ULensFile* OverrideLensFile;                                                // 0x0110 (size: 0x8)
    class ULensFile* CachedLensFile;                                                  // 0x0118 (size: 0x8)
    TArray<FMovieSceneFloatChannel> DistortionParameterChannels;                      // 0x0120 (size: 0x10)
    TArray<FMovieSceneFloatChannel> FxFyChannels;                                     // 0x0130 (size: 0x10)
    TArray<FMovieSceneFloatChannel> ImageCenterChannels;                              // 0x0140 (size: 0x10)

}; // Size: 0x158

class UMovieSceneLensComponentTrack : public UMovieSceneNameableTrack
{
    TArray<class UMovieSceneSection*> Sections;                                       // 0x0098 (size: 0x10)

}; // Size: 0xA8

#endif
