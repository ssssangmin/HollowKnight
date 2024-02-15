//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hollow Knight/Light Blur" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_BlurInfo ("Blur Info", Vector) = (0.00052083336,0.0009259259,0,0)
}
SubShader {
 Pass {
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 33005
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
 Pass {
  ZTest Off
  ZWrite Off
  Cull Off
  GpuProgramID 89791
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