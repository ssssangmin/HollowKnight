//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Alpha Masked/Sprites Alpha Masked - World Coords" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_Color ("Tint", Color) = (1,1,1,1)
[MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
[Toggle] _ClampHoriz ("Clamp Alpha Horizontally", Float) = 0
[Toggle] _ClampVert ("Clamp Alpha Vertically", Float) = 0
[Toggle] _UseAlphaChannel ("Use Mask Alpha Channel (not RGB)", Float) = 0
_MaskRotation ("Mask Rotation in Radians", Float) = 0
_AlphaTex ("Alpha Mask", 2D) = "white" { }
_ClampBorder ("Clamping Border", Float) = 0.01
[KeywordEnum(X, Y, Z)] _Axis ("Alpha Mapping Axis", Float) = 0
_IsThisText ("Is This Text?", Float) = 0
}
SubShader {
 Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend One OneMinusSrcAlpha, One OneMinusSrcAlpha
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 16640
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DUMMY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DUMMY" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PIXELSNAP_ON" "_AXIS_X" "_AXIS_Y" "_AXIS_Z" "_CLAMPHORIZ_ON" "_CLAMPVERT_ON" "_SCREEN_SPACE_UI" "_USEALPHACHANNEL_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Unlit/Texture"
}