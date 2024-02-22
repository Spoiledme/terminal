// Does nothing, serves as an example of a minimal pixel shader
Texture2D shaderTexture;
SamplerState samplerState;
// SamplerState image;
Texture2D image;

cbuffer PixelShaderSettings {
  float  Time;
  float  Scale;
  float2 Resolution;
  float4 Background;
};

float4 main(float4 pos : SV_POSITION, float2 tex : TEXCOORD) : SV_TARGET
{
    // float4 color = shaderTexture.Sample(samplerState, tex);
    // float4 color = shaderTexture.Sample(image, tex);
    float4 color = image.Sample(samplerState, tex);

    color.r = 0; // test we're on

    return color;
}
