//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/VideoDecode" {
Properties {
_MainTex ("_MainTex (A)", 2D) = "black" { }
_SecondTex ("_SecondTex (A)", 2D) = "black" { }
_ThirdTex ("_ThirdTex (A)", 2D) = "black" { }
}
SubShader {
 Pass {
  Name "YCbCr_To_RGB1"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 37382
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "YCbCrA_To_RGBAFull"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 79383
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "YCbCrA_To_RGBA"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 167427
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Flip_RGBA_To_RGBA"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 221545
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Flip_RGBASplit_To_RGBA"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 290515
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Flip_NV12_To_RGB1"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 384808
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Flip_NV12_To_RGBA"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 414840
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "ADJUST_TO_LINEARSPACE" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Name "Flip_P010_To_RGB1"
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 495226
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