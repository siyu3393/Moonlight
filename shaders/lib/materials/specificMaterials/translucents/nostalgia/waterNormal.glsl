// Water normal calculation from Nostalgia shader pack
vec3 waterNormal(vec3 position, float dstep, int matID) {
    dstep = max(dstep, 0.015);

    vec2 delta;
    delta.x = waterWaves(position + vec3( dstep, 0.0, -dstep), matID);
    delta.y = waterWaves(position + vec3(-dstep, 0.0,  dstep), matID);
    delta -= waterWaves(position + vec3(-dstep, 0.0, -dstep), matID);

    return normalize(vec3(-delta.x, 2.0 * dstep, -delta.y));
}

float projectedCaustic(vec3 pos, vec3 normal, vec3 lightDir) {
    vec3 dPdx = dFdx(pos);
    vec3 dPdy = dFdy(pos);

    float num = dot(dPdx, dPdx) * dot(dPdy, dPdy);

    vec3 refractLight = refract(-lightDir, normal, 1.0 / 1.33);
    dPdx += 2.0 * dFdx(refractLight);
    dPdy += 2.0 * dFdy(refractLight);

    float den = max(dot(dPdx, dPdx) * dot(dPdy, dPdy), 1e-6);

    return min(num / den, 16.0);
} 