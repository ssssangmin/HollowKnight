//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/Heat Effect" {
Properties {
_BumpAmt ("Distortion", Range(0, 128)) = 10
_BumpMap ("Normalmap", 2D) = "bump" { }
_SpeedX ("Speed X", Float) = 1
_SpeedY ("Speed Y", Float) = 1
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Opaque" }
 GrabPass {
}
 Pass {
  Name "BASE"
  Tags { "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  ZWrite Off
  GpuProgramID 57417
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Opaque" }
 Pass {
  Name "BASE"
  Tags { "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Blend DstColor Zero, DstColor Zero
  ZWrite Off
  Fog {
   Mode Off
  }
  GpuProgramID 104739
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}