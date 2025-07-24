// Water constants from Nostalgia shader pack
#define waterCoeffRed 7
#define waterCoeffGreen 3
#define waterCoeffBlue 2
#define waterCoeffScatter 3

const vec3 waterExtinctionCoeff = vec3(waterCoeffRed, waterCoeffGreen, waterCoeffBlue) * 4e-2;
const vec3 waterScatterCoeff = vec3(waterCoeffScatter) * 4e-2;

const vec3 waterAttenCoeff = (waterExtinctionCoeff + waterScatterCoeff) * 4.0;
const vec3 waterAbsorbCoeff = (waterExtinctionCoeff + waterScatterCoeff); 