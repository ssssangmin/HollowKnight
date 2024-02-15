//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Alpha Masked/Unlit Alpha Masked - World Coords" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
[Toggle] _ClampHoriz ("Clamp Alpha Horizontally", Float) = 0
[Toggle] _ClampVert ("Clamp Alpha Vertically", Float) = 0
[Toggle] _UseAlphaChannel ("Use Mask Alpha Channel (not RGB)", Float) = 0
_MaskRotation ("Mask Rotation in Radians", Float) = 0
_AlphaTex ("Alpha Mask", 2D) = "white" { }
_ClampBorder ("Clamping Border", Float) = 0.01
[KeywordEnum(X, Y, Z)] _Axis ("Alpha Mapping Axis", Float) = 0
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 34877
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DUMMY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DUMMY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Unlit/Texture"
}