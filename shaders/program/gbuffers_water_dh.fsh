#version 120

uniform sampler2D tex;
varying vec2 texCoord;

void main() {
    vec4 color = texture2D(tex, texCoord);
    gl_FragColor = vec4(color.rgb, 1.0);
} 