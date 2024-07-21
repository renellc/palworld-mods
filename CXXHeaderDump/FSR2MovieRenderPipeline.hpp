#ifndef UE4SS_SDK_FSR2MovieRenderPipeline_HPP
#define UE4SS_SDK_FSR2MovieRenderPipeline_HPP

#include "FSR2MovieRenderPipeline_enums.hpp"

class UFSR2MoviePipelineSettings : public UMoviePipelineViewFamilySetting
{
    EFSR2MoviePipelineQuality FSR2Quality;                                            // 0x0048 (size: 0x1)

}; // Size: 0x50

#endif
