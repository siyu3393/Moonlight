// Nostalgia water style implementation
#ifndef NOSTALGIA_WATER_STYLE_INCLUDED
#define NOSTALGIA_WATER_STYLE_INCLUDED

#include "/lib/materials/specificMaterials/translucents/nostalgia/waterConst.glsl"
#include "/lib/materials/specificMaterials/translucents/nostalgia/waterWaves.glsl"
#include "/lib/materials/specificMaterials/translucents/nostalgia/waterNormal.glsl"
#include "/lib/materials/specificMaterials/translucents/nostalgia/waterReflection.glsl"

void applyNostalgiaWaterStyle(inout vec4 color, vec4 glColor, vec3 worldPos, float lViewPos, vec3 viewPos, vec3 normal) {
    // Nostalgia water color handling
    vec4 colorP = color; // Thêm biến colorP để tránh lỗi
    
    #if MC_VERSION >= 11300
        #if WATERCOLOR_MODE >= 2
            vec3 glColorM = glColor.rgb;

            #if WATERCOLOR_MODE >= 3
                glColorM.g = max(glColorM.g, 0.39);
            #endif

            #ifdef GBUFFERS_WATER
                translucentMultCalculated = true;
                translucentMult.rgb = normalize(sqrt2(glColor.rgb));
                translucentMult.g *= 0.88;
            #endif

            glColorM = sqrt1(glColorM) * vec3(1.0, 0.85, 0.8);
        #else
            vec3 glColorM = vec3(0.43, 0.6, 0.8);
        #endif

        #if WATER_STYLE_DEFINE < 3
            vec3 colorPM = pow2(colorP.rgb);
            color.rgb = colorPM * glColorM;
        #else
            vec3 colorPM = vec3(0.25);
            color.rgb = 0.375 * glColorM;
        #endif
    #else
        #if WATER_STYLE_DEFINE < 3
            vec3 colorPM = pow2(colorP.rgb);
            color.rgb = colorPM * glColor.rgb;
        #else
            vec3 colorPM = vec3(0.25);
            color.rgb = 0.375 * glColor.rgb;
        #endif
    #endif

    // Apply water waves and normals
    int matID = 102; // Water material ID in Nostalgia
    
    // Calculate water waves
    float waves = waterWaves(worldPos, matID);
    
    // Calculate water normal
    vec3 waterNrm = waterNormal(worldPos, 0.05, matID);
    
    // Apply water normal to the existing normal
    normal = normalize(mix(normal, waterNrm, WATER_BUMPINESS));
    
    // Apply water reflections
    color.rgb = getNostalgiaWaterReflection(viewPos, normal, color.rgb, 0.05);
    
    // Apply water alpha
    float waterAlpha = 0.5 * WATER_ALPHA_MULT * 0.01;
    color.a = waterAlpha;
    
    // Apply water fog based on view distance
    float waterFogDist = 1.0 - exp(-lViewPos * WATER_FOG_MULT * 0.01);
    color.rgb = mix(color.rgb, color.rgb * 0.1, waterFogDist);
}

#endif 