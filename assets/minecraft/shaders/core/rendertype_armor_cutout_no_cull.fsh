// Some of this was bootlegged from Ancientkingg's FancyPants shader, but the parts that made it through are in pretty rough shape. https://github.com/Ancientkingg/fancyPants

// Kirven was here. www.brennynsabar.us

#version 150

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

vec4 emissivePixel = vec4(0);

ivec2 atlasSize = textureSize(Sampler0, 0);
vec2 coords = texCoord0;

float sizeX = atlasSize.x / 64;
float sizeY = atlasSize.y / 32;

float totalSetX = (sizeX / 2) + 1;
float totalSetY = (sizeY / 2) + 1; // I have no idea how I arrived at this number.

vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
			

	for (int Xindex = 0; Xindex <= (totalSetX + 3); Xindex++) //(totalSetX + 3)
	{
        for (int Yindex = 0; Yindex <= (totalSetY + 3); Yindex++) //(totalSetY + 3)
        {

			emissivePixel = texelFetch(Sampler0, ivec2(Xindex * 64, Yindex * 32), 0);
			if (emissivePixel.a > 0.1 && (coords.y * sizeY) >= Yindex && (coords.y * sizeY) <= Yindex +1 && (coords.x * sizeX) >= Xindex && (coords.x * sizeX) <= Xindex +1)
				{
					color = texture(Sampler0, texCoord0) * emissivePixel * ColorModulator;
				}
				
		}
	}
		
    if (color.a < 0.1) {
        discard;
    }
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
