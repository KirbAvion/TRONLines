#version 150

//This uses a trick I first saw in a shader pack by ShockMicro. https://github.com/ShockMicro/VanillaDynamicEmissives

//Kirven was here. www.brennynsabar.us

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
	
    if (color.a * 255 < 1) {
        discard;
    }
	
    if (color.a * 255 <= 254 && color.a * 255 >= 1) {
        color = texture(Sampler0, texCoord0) * vec4(vertexColor.r + color.a, vertexColor.g + color.a, vertexColor.b + color.a, 1) * ColorModulator;
    }
	
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
