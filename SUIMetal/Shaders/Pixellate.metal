//
//  Pixellate.metal
//  NewScroll
//
//  Created by Astemir Eleev on 19/06/2023.
//

#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

//[[ stitchable ]] half4 pixellate(float2 position, SwiftUI::Layer layer, float strength) {
//    float min_strength = max(strength, 0.0001);
//    float coord_x = min_strength * round(position.x / min_strength);
//    float coord_y = min_strength * round(position.y / min_strength);
//    return layer.sample(float2(coord_x, coord_y));
//}

[[ stitchable ]] float2 pixellate(float2 position, float strength) {
    float min_strength = max(strength, 0.0001);
    float coord_x = min_strength * round(position.x / min_strength);
    float coord_y = min_strength * round(position.y / min_strength);
    return float2(coord_x, coord_y);
}
