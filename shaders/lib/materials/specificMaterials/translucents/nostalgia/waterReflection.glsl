// Water reflection implementation from Nostalgia shader pack
#ifndef NOSTALGIA_WATER_REFLECTION_INCLUDED
#define NOSTALGIA_WATER_REFLECTION_INCLUDED

vec3 getNostalgiaWaterReflection(vec3 viewPos, vec3 normal, vec3 albedo, float roughness) {
    // Tính hướng phản chiếu
    vec3 viewDir = normalize(viewPos);
    vec3 reflectDir = reflect(viewDir, normal);
    
    // Tính hệ số Fresnel
    float fresnel = pow(1.0 - max(0.0, dot(normal, -viewDir)), 5.0);
    
    // Mô phỏng phản chiếu đơn giản
    vec3 skyColor = vec3(0.5, 0.7, 1.0); // Màu bầu trời mặc định
    
    // Điều chỉnh phản chiếu dựa trên góc nhìn
    float reflectionStrength = mix(0.05, 0.5, fresnel);
    
    // Kết hợp màu phản chiếu với màu nước
    return mix(albedo, skyColor, reflectionStrength);
}

#endif 