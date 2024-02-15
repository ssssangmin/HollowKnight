//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "PS4/Video" {
Properties {
_MainTex ("Luminance Texture", 2D) = "white" { }
_CromaTex ("croma texture", 2D) = "white" { }
}
SubShader {
 Pass {
  GpuProgramID 20606
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