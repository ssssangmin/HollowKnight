//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "UI/Blur/UIBlur" {
Properties {
_TintColor ("Tint Color", Color) = (1,1,1,0.2)
_Size ("Spacing", Range(0, 70)) = 5
_Vibrancy ("Vibrancy", Range(0, 2)) = 0.2
_StencilComp ("Stencil Comparison", Float) = 8
_Stencil ("Stencil ID", Float) = 0
_StencilOp ("Stencil Operation", Float) = 0
_StencilWriteMask ("Stencil Write Mask", Float) = 255
_StencilReadMask ("Stencil Read Mask", Float) = 255
}
SubShader {
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
 GrabPass {
}
 Pass {
  Name "VERTICAL"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 47334
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
 GrabPass {
}
 Pass {
  Name "HORIZONTAL"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 73576
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
 GrabPass {
}
 Pass {
  Name "VERTICAL"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 147552
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
 GrabPass {
}
 Pass {
  Name "HORIZONTAL"
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 260131
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
 GrabPass {
}
 Pass {
  Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Opaque" }
  Stencil {
   ReadMask 0
   WriteMask 0
   Comp Disabled
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 325672
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