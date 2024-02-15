//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Switch/Video" {
Properties {
_Color ("Tint", Color) = (1,1,1,1)
_MainTex ("Luminance Texture", 2D) = "black" { }
_ChromaTex ("Chroma Texture", 2D) = "green" { }
}
SubShader {
 Pass {
  GpuProgramID 36154
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