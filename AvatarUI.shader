Shader "ZZZ/AvatarUI"
{
    Properties
    {
        [KeywordEnum(None,Face,Eye,Body)]_Domain ("Domain",Float) = 0
            
        [Header(Main Maps)] _Color ("Color", Color)=(1,1,1,1)
        [NoScaleoffset] _MainTex ("Texture",2D)="white"{}
        [NoScaleoffset] _LightTex ("Light Tex",2D)="linearGray"{}
        [NoScaleoffset] _OtherDataTex ("Other Data Tex",2D) = "white"{}
        [NoScale0ffset] _OtherDataTex2 ("Other Data Tex",2D)= "white"{}
            
            
        _NoseLineHoriDisp ("HoriDisappear Value",Range(0.85,0.98))=0.92
        _NoseLineLkDnDisp ("LookDown Disappear Value",Range(0.5,0.7))=0.62
            
        _AlphaClip("Alpha Clipping",Range(0,1))=0.333
            
        _BumpScale ("Normal Scale",Range(-5,5))=1
        _Glossiness ("Smoothness",Range(0,1))=0.5
        _Metallic("Metallic",Range(0,1))=0
            
        [HideInInspector] _HeadCenter  ("Head Center", Vector) = (0,0,0)
        [HideInInspector] _HeadForward ("Head Forward",Vector) = (0,0,0)
        [HideInInspector] _HeadRight   ("Head Right",Vector)   = (0,0,0)
        _HeadSphereRange("Head Sphere Range",Range(0,1))=0
        
        _AmbientColorIntensity("Ambient Intensity",Range(0,1))=0.333
            
        [Enum(s0,0,s1,1,s2,2,s3,3,s4,4,s5,5)] _SkinMatId ("SkinMatId",Float) = 0
            
        _Modelsize ("Model Size 1",Range(0,100)) =1
        _Modelsize2 ("Model Size 2",Range(0,100)) =1
        _ModelSize3 ("Model Size 3",Range(0,100)) =1
        _ModelSize4 ("Model Size 4",Range(0,100)) =1
        _ModelSize5 ("Model Size 5",Range(0,100)) =1
        
            
        [Header(Screen Space Rim)]
        [Toggle(_SCREEN_SPACE_RIM)] _ScreenSpaceRim ("Screen Space Rim",Float)=1
        _ScreenSpaceRimwidth ("Screen Space Rim Width",Range(0,10))=1
        _ScreenSpaceRimThreshold("Screen Space Rim Threshold",Range(0,1))=0.01
        _ScreenSpaceRimFadeout ("Screen Space Rim Fadeout",Range(0,10))=0.5
        _ScreenSpaceRimBrightness("Screen Space Rim Brightness",Range(0,10))= 1
            
        [Header(Screen Space Shadow)]
        [Toggle(_SCREEN_SPACE_SHADOW)]_ScreenSpaceShadow ("Screen Space Shadow",Float)=1
        _ScreenSpaceShadowWidth ("Screen Space Shadow Width",Range(0,1))=0.2
        _ScreenSpaceShadowThreshold ("Screen Space Shadow Threshold",Range(0,1))=0.015
        _ScreenSpaceShadowFadeout ("Screen Space Shadow Fadeout",Range(0,10))=0.2
        
        [Header(Diffuse)]
        _ShallowColor  ("Shallow Color 1",Color) = (0.8,0.8,0.8,1)
        _ShallowColor2 ("Shallow Color 2",Color) = (0.8,0.8,0.8,1)
        _ShallowColor3 ("Shallow Color 3",Color) = (0.8,0.8,0.8,1)
        _ShallowColor4 ("Shallow Color 4",Color) = (0.8,0.8,0.8,1)
        _ShallowColor5 ("Shallow Color 5",Color) = (0.8,0.8,0.8,1)
            
        _ShadowColor  ("Shadow Color 1",Color) = (0.6,0.6,0.6,1)
        _ShadowColor2 ("Shadow Color 2",Color) = (0.6,0.6,0.6,1)
        _ShadowColor3 ("Shadow Color 3",Color) = (0.6,0.6,0.6,1)
        _ShadowColor4 ("Shadow Color 4",Color) = (0.6,0.6,0.6,1)
        _ShadowColor5 ("Shadow Color 5",Color) = (0.6,0.6,0.6,1)
        
        _PostShallowTint ("Post Shallow Tint",Color)=(1,1,1,1)
        _PostShallowFadeTint ("Post Shallow Fade Tint",Color)=(1,1,1,1)
        _PostShadowTint ("Post Shadow Tint",Color)=(1,1,1,1)
        _PostShadowFadeTint ("Post Shadow Fade Tint",Color)=(1,1,1,1)
        _PostFrontTint ("Post Front Tint",Color)=(1,1,1,1)
        _PostSssTint ("Post SSS Tint",Color)=(1,1,1,1)
            
        _AlbedoSmoothness ("Albedo Smoothness",Range(0,1))=0.1
        
        [Header(Specular)]
        [Toggle]_HighlightShape  ("Highlight Shape 1",Float) = 0
        [Toggle]_HighlightShape2 ("Highlight Shape 2",Float) = 0
        [Toggle]_HighlightShape3 ("Highlight Shape 3",Float) = 0
        [Toggle]_HighlightShape4 ("Highlight Shape 4",Float) = 0
        [Toggle]_HighlightShape5 ("Highlight Shape 5",Float) = 0
            
        _ToonSpecular  ("Toon Specular 1",Range(0,1)) = 0.01
        _ToonSpecular2 ("Toon Specular 2",Range(0,1)) = 0.01
        _ToonSpecular3 ("Toon Specular 3",Range(0,1)) = 0.01
        _ToonSpecular4 ("Toon Specular 4",Range(0,1)) = 0.01
        _ToonSpecular5 ("Toon Specular 5",Range(0,1)) = 0.01
        
        _SpecularRange ("Specular Range 0",Range(0,2))=1
        _SpecularRange2 ("Specular Range 1",Range(0,2))=1
        _SpecularRange3 ("Specular Range 2",Range(0,2))=1
        _SpecularRange4 ("Specular Range 3",Range(0,2))=1
        _SpecularRange5 ("Specular Range 4",Range(0,2))=1
        
        _ShapeSoftness ("Shape Softness 1",Range(0,1))=0.1
        _ShapeSoftness2 ("Shape Softness 2",Range(0,1))=0.1
        _ShapeSoftness3 ("Shape Softness 3",Range(0,1))=0.1
        _ShapeSoftness4 ("Shape Softness 4",Range(0,1))=0.1
        _ShapeSoftness5 ("Shape Softness 5",Range(0,1))=0.1
        
        _SpecIntensity ("Specular Intensity",Range(0,1))=0.1
        
        [HDR]_SpecularColor ("Specular Color 1",Color)=(1,1,1,1)
        [HDR]_SpecularColor2 ("Specular Color 2",Color)=(1,1,1,1)
        [HDR]_SpecularColor3 ("Specular Color 3",Color)=(1,1,1,1)
        [HDR]_SpecularColor4 ("Specular Color 4",Color)=(1,1,1,1)
        [HDR]_SpecularColor5 ("Specular Color 5",Color)=(1,1,1,1)
        
        [Header(Rim Glow)]
        [HDR]_RimGlowLightColor ("Light Color 1",Color)=(0.55,0.55,0.55,1)
        [HDR]_RimGlowLightColor2 ("Light Color 2",Color)=(0.55,0.55,0.55,1)
        [HDR]_RimGlowLightColor3 ("Light Color 3",Color)=(0.55,0.55,0.55,1)
        [HDR]_RimGlowLightColor4 ("Light Color 4",Color)=(0.55,0.55,0.55,1)
        [HDR]_RimGlowLightColor5 ("Light Color 5",Color)=(0.55,0.55,0.55,1)
        
        
        [HDR]_UISunColor ("UI Sun Color 1",Color)=(1,0.92,0.9,1)
        [HDR]_UISunColor2 ("UI Sun Color 2",Color)=(1,0.92,0.9,1)
        [HDR]_UISunColor3 ("UI Sun Color 3",Color)=(1,0.92,0.9,1)
        [HDR]_UISunColor4 ("UI Sun Color 4",Color)=(1,0.92,0.9,1)
        [HDR]_UISunColor5 ("UI Sun Color 5",Color)=(1,0.92,0.9,1)
        
        
        [Header(Outline)]
        [Toggle(_OUTLINE_PASS)]_Outline ("Outline",Float)=1
        _OutlineColor ("Outline Color 1",Color)=(1,1,1,1)
        _OutlineColor2 ("Outline Color 2",Color)=(1,1,1,1)
        _OutlineColor3 ("Outline Color 3",Color)=(1,1,1,1)
        _OutlineColor4 ("Outline Color 4",Color)=(1,1,1,1)
        _OutlineColor5 ("Outline Color 5",Color)=(1,1,1,1)
        _OutlineWidth ("Outline Width",Range(0,10))=1
        _MaxOutlineZOffset ("Max Outline Z Offset",Range(0,1))=0.01
        
        [Header(MatCap)]
        [Toggle(_MATCAP_ON)] _MatCap ("MatCap",Float)=0
        [NoScaleoffset]_MatCapTex ("MatCap Tex 1",2D)="white"{}
        [NoScaleoffset]_MatCapTex2 ("MatCap Tex 2",2D)="white"{}
        [NoScaleoffset]_MatCapTex3 ("MatCap Tex 3",2D)="white"{}
        [NoScaleoffset]_MatCapTex4 ("MatCap Tex 4",2D)="white"{}
        [NoScaleoffset]_MatCapTex5 ("MatCap Tex 5",2D)="white"{}
        
        
        _MatCapColorTint ("Color Tint 1",Color)=(1,1,1,1)
        _MatCapColorTint2 ("Color Tint 2",Color)=(1,1,1,1)
        _MatCapColorTint3 ("Color Tint 3",Color)=(1,1,1,1)
        _MatCapColorTint4 ("Color Tint 4",Color)=(1,1,1,1)
        _MatCapColorTint5 ("Color Tint 5",Color)=(1,1,1,1)
        
        _MatCapColorBurst ("Color Burst 1",Range(0,10))=1
        _MatCapColorBurst2 ("Color Burst 2",Range(0,10))=1
        _MatCapColorBurst3 ("Color Burst 3",Range(0,10))=1
        _MatCapColorBurst4 ("Color Burst 4",Range(0,10))=1
        _MatCapColorBurst5 ("Color Burst 5",Range(0,10))=1
        
        _MatCapAlphaBurst ("Alpha Burst 1",Range(0,10))=1
        _MatCapAlphaBurst2 ("Alpha Burst 2",Range(0,10))=1
        _MatCapAlphaBurst3 ("Alpha Burst 3",Range(0,10))=1
        _MatCapAlphaBurst4 ("Alpha Burst 4",Range(0,10))=1
        _MatCapAlphaBurst5 ("Alpha Burst 5",Range(0,10))=1
        
        [Toggle]_MatCapRefract ("MapCap Refract 1",Float)=0
        [Toggle]_MatCapRefract2 ("MapCap Refract 2",Float)=0
        [Toggle]_MatCapRefract3 ("MapCap Refract 3",Float)=0
        [Toggle]_MatCapRefract4 ("MapCap Refract 4",Float)=0
        [Toggle]_MatCapRefract5 ("MapCap Refract 5",Float)=0
        
        _RefractDepth ("Refract Depth 1",Range(0,2))=0.5
        _RefractDepth2 ("Refract Depth 2",Range(0,2))=0.5
        _RefractDepth3 ("Refract Depth 3",Range(0,2))=0.5
        _RefractDepth4 ("Refract Depth 4",Range(0,2))=0.5
        _RefractDepth5 ("Refract Depth 5",Range(0,2))=0.5
        
        _RefractParam ("Refract Wrapoffset 1",Vector)=(5,5,0,0)
        _RefractParam2 ("Refract Wrapoffset 2",Vector)=(5,5,0,0)
        _RefractParam3 ("Refract Wrapoffset 3",Vector)=(5,5,0,0)
        _RefractParam4 ("Refract Wrapoffset 4",Vector)=(5,5,0,0)
        _RefractParam5 ("Refract Wrapoffset 5",Vector)=(5,5,0,0)
        
        [Enum(AlphaBlended,0,Add,1,Overlay,2)]_MatCapBlendMode ("MatCap Blend Mode 1",Float)=0
        [Enum(AlphaBlended,0,Add,1,Overlay,2)]_MatCapBlendMode2 ("MatCap Blend Mode 2",Float)=0
        [Enum(AlphaBlended,0,Add,1,Overlay,2)]_MatCapBlendMode3 ("MatCap Blend Mode 3",Float)=0
        [Enum(AlphaBlended,0,Add,1,Overlay,2)]_MatCapBlendMode4 ("MatCap Blend Mode 4",Float)=0
        [Enum(AlphaBlended,0,Add,1,Overlay,2)]_MatCapBlendMode5 ("MatCap Blend Mode 5",Float)=0
        
        [Header(Option)]
        [Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull (Default back)",Float)=2
        [Enum(Off,0,On,1)] _ZWrite ("ZWrite (Default On)",Float)=1
        [Enum(UnityEngine.Rendering.BlendMode)]_SrcBlendMode ("Src blend mode (Default One)",Float)=1
        [Enum(UnityEngine.Rendering.BlendMode)]_DstBlendMode ("Dst blend mode (Default Zero)",Float)=0
        [Enum(UnityEngine.Rendering.BlendOp)]_BlendOp ("Blend operation (Default Add)",Float)=0
        _StencilRef ("Stencil reference",Int)=0
        [Enum(UnityEngine.Rendering.CompareFunction)]_StencilComp ("Stencil compare function",Int)=0
        [Enum(UnityEngine.Rendering.Stencilop)]_StencilPassOp ("Stencil pass operation",Int)=0
        [Enum(UnityEngine.Rendering.Stencilop)]_StencilFailOp ("Stencil fail operation",Int)=0
        [Enum(UnityEngine.Rendering.Stencilop)]_StencilZFailOp ("Stencil Z fail operation",Int)=0
       
        [Header(SRP Default)]
        [Toggle(_SRP_DEFAULT_PASS)]_SRPDefaultPass ("SRP Default Pass",Int)=0
        [Enum(UnityEngine.Rendering.BlendMode)]_SRPSrcBlendMode ("SRP src blend mode (Default One)",Float)=1
        [Enum(UnityEngine.Rendering.BlendMode)]_SRPDstBlendMode ("SRP dst blend mode (Default Zero)",Float)=0
        [Enum(UnityEngine.Rendering.BlendOp)]_SRPBlendOp ("SRP blend operation (Default Add)",Float) =0
        
        _SRPStencilRef ("SRP stencil reference",Int)=0
        [Enum(UnityEngine.Rendering.CompareFunction)]_SRPStencilComp ("SRP stencil compare function",Int)=0
        [Enum(UnityEngine.Rendering.Stencilop)]_SRPStencilPassOp ("SRP stencil pass operation",Int)=0
        [Enum(UnityEngine.Rendering.Stencilop)]_SRPStencilFailOp ("SRP stencil fail operation",Int)=0
        [Enum(UnityEngine.Rendering.Stencilop)]_SRPStencilZFailOp ("SRP stencil Z fail operation",Int)=0
    }
    SubShader
    {
        Tags
        {
            "RenderPipeline" = "UniversalPipeline"
            "RenderType" = "Opaque"
        }
        LOD 100
        
        HLSLINCLUDE
        #pragma shader_feature_local _DOMAIN_FACE
        #pragma shader_feature_local _DOMAIN_EYE
        #pragma shader_feature_local _DOMAIN_BODY
        
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS_CASCADE
        #pragma multi_compile _ _MAIN_LIGHT_SHADOWS SCREEN
        
        #pragma multi_compile_fragment _ _LIGHT_LAYERS
        #pragma multi_compile_fragment _ _LIGHT_COOKIES
        #pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
        #pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
        #pragma multi_compile_fragment _ _SHADOWS_SOFT
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
        #pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
        
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
        #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DeclareDepthTexture.hlsl"
        
        #define DEFINE_MINMAX3(TYPE) \
        TYPE min3(TYPE a , TYPE b, TYPE c) {return TYPE(min(min(a,b),c));}\
        TYPE##2 min3(TYPE##2 a , TYPE##2 b, TYPE##2 c) {return TYPE##2(min(min(a,b),c));}\
        TYPE##3 min3(TYPE##3 a , TYPE##3 b, TYPE##3 c) {return TYPE##3(min(min(a,b),c));}\
        TYPE##4 min3(TYPE##4 a , TYPE##4 b, TYPE##4 c) {return TYPE##4(min(min(a,b),c));}\
        \
        TYPE max3(TYPE a , TYPE b, TYPE c) {return TYPE(max(max(a,b),c));}\
        TYPE##2 max3(TYPE##2 a , TYPE##2 b, TYPE##2 c) {return TYPE##2(max(max(a,b),c));}\
        TYPE##3 max3(TYPE##3 a , TYPE##3 b, TYPE##3 c) {return TYPE##3(max(max(a,b),c));}\
        TYPE##4 max3(TYPE##4 a , TYPE##4 b, TYPE##4 c) {return TYPE##4(max(max(a,b),c));}

        DEFINE_MINMAX3(bool)
        DEFINE_MINMAX3(uint)
        DEFINE_MINMAX3(int)
        DEFINE_MINMAX3(float)
        DEFINE_MINMAX3(half)

        #define DEFINE_SELECT(TYPE) \
        TYPE select(int id, TYPE e0, TYPE e1, TYPE e2, TYPE e3, TYPE e4) {return TYPE(id > 0 ? (id > 1 ? (id > 2 ? (id > 3 ? e4 : e3) : e2) : e1) : e0);}\
        TYPE##2 select(int id, TYPE##2 e0, TYPE##2 e1, TYPE##2 e2, TYPE##2 e3, TYPE##2 e4) {return TYPE##2(id > 0 ? (id > 1 ? (id > 2 ? (id > 3 ? e4 : e3) : e2) : e1) : e0);}\
        TYPE##3 select(int id, TYPE##3 e0, TYPE##3 e1, TYPE##3 e2, TYPE##3 e3, TYPE##3 e4) {return TYPE##3(id > 0 ? (id > 1 ? (id > 2 ? (id > 3 ? e4 : e3) : e2) : e1) : e0);}\
        TYPE##4 select(int id, TYPE##4 e0, TYPE##4 e1, TYPE##4 e2, TYPE##4 e3, TYPE##4 e4) {return TYPE##4(id > 0 ? (id > 1 ? (id > 2 ? (id > 3 ? e4 : e3) : e2) : e1) : e0);}

        DEFINE_SELECT(bool)
        DEFINE_SELECT(uint)
        DEFINE_SELECT(int)
        DEFINE_SELECT(float)
        DEFINE_SELECT(half)

        float AverageColor(float3 color)
        {
            return dot(color, float3(1.0, 1.0, 1.0)) / 3.0;
        }

        float NormalizeColorByAverage(float3 color)
        {
          float average = AverageColor(color);
          return color / max(average, 1e-5);
          
        }

        float3 ScaleColorByMax(float3 color)
        {
          float maxComponent = max3(color.r, color.g, color.b);
          maxComponent = min(maxComponent, 1.0);
          return float3(color * maxComponent);
        }

        CBUFFER_START(UnityPerMaterial)
        
        float4 _Color;
        
        sampler2D _MainTex;
        sampler2D _LightTex;
        sampler2D _OtherDataTex;
        sampler2D _OtherDataTex2;

        float _NoseLineHoriDisp;
        float _NoseLineLkDnDisp;

        float _AlphaClip;

        float _BumpScale;
        float _Glossiness;
        float _Metallic;
        
        float3 _HeadCenter;
        float3 _HeadForward;
        float3 _HeadRight;
        float  _HeadSphereRange;
        
        float _AmbientColorIntensity;
        
        int _SkinMatId;
        
        float _ModelSize;
        float _Modelsize2;
        float _ModelSize3;
        float _Modelsize4;
        float _ModelSize5;
        
        float _ScreenSpaceRimWidth;
        float _ScreenSpaceRimThreshold;
        float _ScreenSpaceRimFadeout;
        float _ScreenSpaceRimBrightness;
        
        float _ScreenSpaceShadowWidth;
        float _ScreenSpaceShadowThreshold;
        float _ScreenSpaceShadowFadeout;
        
        float3 _ShallowColor;
        float3 _ShallowColor2;
        float3 _ShallowColor3;
        float3 _ShallowColor4;
        float3 _ShallowColor5;
        
        float3 _ShadowColor;
        float3 _ShadowColor2;
        float3 _ShadowColor3;
        float3 _ShadowColor4;
        float3 _ShadowColor5;
        
        float3 _PostShallowTint;
        float3 _PostShallowFadeTint;
        float3 _PostShadowTint;
        float3 _PostShadowFadeTint;
        float3 _PostFrontTint;
        float3 _PostSssTint;

        float _AlbedoSmoothness;

        float _HighlightShape;
        float _HighlightShape2;
        float _HighlightShape3;
        float _HighlightShape4;
        float _Highlightshape5;
        
        float ToonSpecular;
        float _ToonSpecular2;
        float _ToonSpecular3;
        float _ToonSpecular4;
        float _ToonSpecular5;

        float _SpecularRange;
        float _SpecularRange2;
        float _SpecularRange3;
        float _SpecularRange4;
        float _SpecularRange5;

        float _ShapeSoftness;
        float _ShapeSoftness2;
        float _ShapeSoftness3;
        float _ShapeSoftness4;
        float _ShapeSoftness5;
        
        float _SpecIntensity;
        
        float3 _SpecularColor;
        float3 _SpecularColor2;
        float3 _SpecularColor3;
        float3 _SpecularColor4;
        float3 _SpecularColor5;

        float3 _RimGlowLightColor;
        float3 _RimGlowLightColor2;
        float3 _RimGlowLightColor3;
        float3 _RimGlowLightColor4;
        float3 _RimGlowLightColor5;
        
        float3 _UISunColor;
        float3 _UISunColor2;
        float3 _UISunColor3;
        float3 _UISunColor4;
        float3 _UISunColor5;

        float3 _OutlineColor;
        float3 _OutlineColor2;
        float3 _OutlineColor3;
        float3 _OutlineColor4;
        float3 _OutlineColor5;
        
        float _OutlineWidth;
        float _MaxOutlineZOffset;
        
        sampler2D _MatCapTex;
        sampler2D _MatCapTex2;
        sampler2D _MatCapTex3;
        sampler2D _MatCapTex4;
        sampler2D _MatCapTex5;
        
        float3 _MatCapColorTint;
        float3 _MatCapColorTint2;
        float3 _MatCapColorTint3;
        float3 _MatCapColorTint4;
        float3 _MatCapColorTint5;
        
        float _MatCapColorBurst;
        float _MatCapColorBurst2;
        float _MatCapColorBurst3;
        float _MatCapColorBurst4;
        float _MatCapColorBurst5;
        
        float _MatCapAlphaBurst;
        float _MatCapAlphaBurst2;
        float _MatCapAlphaBurst3;
        float _MatCapAlphaBurst4;
        float _MatCapAlphaBurst5;
        
        float _MatCapRefract;
        float _MatCapRefract2;
        float _MatCapRefract3;
        float _MatCapRefract4;
        float _MatCapRefract5;
        
        float _RefractDepth;
        float _RefractDepth2;
        float _RefractDepth3;
        float _RefractDepth4;
        float _RefractDepth5;

        float _RefractParam;
        float _RefractParam2;
        float _RefractParam3;
        float _RefractParam4;
        float _RefractParam5;

        int _MatCapBlendMode;
        int _MatCapBlendMode2;
        int _MatCapBlendMode3;
        int _MatCapBlendMode4;
        int _MatCapBlendMode5;
        
        CBUFFER_END

        struct UniversalAttributes
        {
            float4 positionOS   : POSITION;
            float4 tangentOS    : TANGENT;
            float3 normalOS     : NORMAL;
            float2 texcoord     : TEXCOORD0;
        };

        struct UniversalVaryings
        {
            float2 uv                       :TEXCOORDO;
            float4 positionWSAndFogFactor   :TEXCOORD1;
            float3 normalWS                 :TEXCOORD2;
            float4 tangentWS                :TEXCOORD3;
            float3 viewDirectionWS          :TEXCOORD4;
            float4 positionCS               :SV_POSITION;
        };
      
        UniversalVaryings MainVS(UniversalAttributes input){
            VertexPositionInputs positionInputs =  GetVertexPositionInputs(input.positionOS.xyz);
            VertexNormalInputs normalInputs = GetVertexNormalInputs(input.normalOS,input.tangentOS);

            UniversalVaryings output;
            output.positionCS =  positionInputs.positionCS;
            output.positionWSAndFogFactor = float4(positionInputs.positionWS,ComputeFogFactor(positionInputs.positionCS.z));
            output.normalWS =  normalInputs.normalWS;
            output.tangentWS.xyz =  normalInputs.tangentWS;
            output.tangentWS.w =  input.tangentOS.w * GetOddNegativeScale();
            output.viewDirectionWS = unity_OrthoParams.w == 0 ? GetCameraPositionWS() -positionInputs.positionWS : GetWorldToViewMatrix()[2].xyz;
            output.uv = input.texcoord;
            return output;
        }
        
        float4 MainPS(UniversalVaryings input,bool isFrontFace: SV_IsFrontFace):SV_Target
        {
            float4 mainTex =tex2D(_MainTex, input.uv);
            mainTex *= _Color;

            float3 baseColor = mainTex.rgb;
            float baseAlpha = 1.0;
            #if _DOMAIN_BODY || _DOMAIN_EYE
            {
                baseAlpha = mainTex.a;
            }
            #endif

            float3 normalWS = normalize(input.normalWS);
            float3 pixelNormalWS = normalWS;
            float diffuseBias = 0;

            int materialId = 0;
            
            float3 positionWS = input.positionWSAndFogFactor.xyz;

            float4 shadowCoord = TransformWorldToShadowCoord(positionWS);
            Light mainLight = GetMainLight(shadowCoord);
            float3 lightDirectionWS = normalize(mainLight.direction);
            float3 lightColor = mainLight.color;

            float sgn = input.tangentWS.w;
            float3 tangentWS = normalize(input.tangentWS.xyz);
            float3 bitangentWS = sgn* cross(normalWS.xyz, tangentWS.xyz);

            #if _DOMAIN_BODY
            {
              float4 lightData = tex2D(_LightTex, input.uv);
              lightData = lightData * 2.0 - 1.0;
              diffuseBias = lightData.z * 2.0;

              float3 pixelNormalTS = float3(lightData.xy, 0.0);
              pixelNormalTS.xy *= _BumpScale;
              pixelNormalTS.z = sqrt(1.0 - min(0.0, dot(pixelNormalTS.xy, pixelNormalTS.xy)));
              pixelNormalWS = TransformTangentToWorld(pixelNormalTS, float3x3(tangentWS,bitangentWS, normalWS));
              pixelNormalWS = normalize(pixelNormalWS);

              float4 otherData = tex2D(_OtherDataTex, input.uv);
              materialId = max(0, 4 - floor(otherData.x * 5));
            }
            #endif

            normalWS *= isFrontFace ? 1 : -1;
            pixelNormalWS *= isFrontFace ? 1 : -1; 

            float shadowAttenuation = 1.0;
            #if _SCREEN_SPACE_SHADOW
            {
              float linearEyeDepth = input.positionCS.w;
              float perspective =  1.0 / linearEyeDepth;
              float offsetMul = _ScreenSpaceShadowWidth * 5.0 * perspective / 100.0;
              
              float3 lightDirectionVS = TransformWorldToViewDir(lightDirectionWS);
              float2 offset = lightDirectionVS.xy * offsetMul;
              int2 coord =  input.positionCS.xy +  offset * _ScaledScreenParams.xy;
              coord = min(max(0,coord), _ScaledScreenParams.xy - 1);
              float offsetSceneDepth =  LoadSceneDepth(coord);
              float offsetSceneLinearEyeDepth = LinearEyeDepth(offsetSceneDepth, _ZBufferParams);
              
              float fadeout = max(1e-5, _ScreenSpaceShadowFadeout);
              shadowAttenuation = saturate((offsetSceneLinearEyeDepth - (linearEyeDepth - _ScreenSpaceShadowThreshold)) * 50 / fadeout);
            }
            #endif

            float baseAttenuation = 1.0;
            {
              float NoL = dot(pixelNormalWS, lightDirectionWS);
              baseAttenuation = NoL;
              baseAttenuation += diffuseBias;
            }

            float albedoSmoothness = max(1e-5, _AlbedoSmoothness);

            float albedoShadowFade = 1.0;
            float albedoShadow = 1.0;
            float albedoShallowFade = 1.0;
            float albedoShallow = 1.0;
            float albedoSSS = 1.0;
            float albedoFront = 1.0;
            float albedoForward = 1.0;
            {
              float attenuation = baseAttenuation * 1.5;
              float s0 = albedoSmoothness * 1.5;
              float s1 = 1.0 - s0;

              float aRamp[6] = {
                (attenuation + 1.5 ) / s1 + 0.0 ,
                (attenuation + 0.5 ) / s0 + 0.5 ,
                (attenuation + 0.0 ) / s1 + 0.5 ,
                (attenuation - 0.5 ) / s0 + 0.5 ,
                (attenuation - 0.5 ) / s0 - 0.5 ,
                (attenuation - 2.0 ) / s1 + 1.5 ,
              };

              albedoShadowFade = saturate(1 - aRamp[0]);
              albedoShadow = saturate(min(1 - aRamp[1], aRamp[0]));
              albedoShallowFade = saturate(min(1-aRamp[2], aRamp[1]));
              albedoShallow = saturate(min(1-aRamp[3], aRamp[2]));
              albedoSSS = saturate(min(1-aRamp[4], aRamp[3]));
              albedoFront = saturate(min(1-aRamp[5], aRamp[4]));
              albedoForward = saturate(aRamp[5]);

              float sRamp[2] = {
                2.0 * shadowAttenuation,
                2.0 * shadowAttenuation - 1
              };

              albedoShallowFade *= saturate(sRamp[0]);
              albedoShallowFade += (1 - albedoShadowFade - albedoShadow) * saturate(1 - sRamp[0]);
              albedoShallow *= saturate(min(sRamp[0], 1 - sRamp[1])) + saturate(sRamp[1]);
              albedoSSS *= saturate(min(sRamp[0], 1 - sRamp[1])) + saturate(sRamp[1]);
              albedoSSS += (albedoFront + albedoForward) * saturate(min(sRamp[0], 1 - sRamp[1]));
              albedoFront *= saturate(sRamp[1]);
              albedoForward *= saturate(sRamp[1]);
            }
            
            float3 shadowFadeColor = 1.0;
            float3 shadowColor = 1.0;
            float3 shallowFadeColor = 1.0;
            float3 shallowColor = 1.0;
            float3 sssColor = 1.0;
            float3 frontColor = 1.0;
            float3 forwardColor = 1.0;
            {
              float zFade = saturate(input.positionCS.w * 0.43725);

              shadowColor = select(materialId, _ShadowColor, _ShadowColor2, _ShadowColor3, _ShadowColor4, _ShadowColor5);

              shadowColor = lerp(NormalizeColorByAverage(shadowColor), shadowColor, zFade);
              shadowFadeColor = shadowColor * _PostShadowFadeTint;
              shadowColor *= _PostShadowTint;

              shallowColor = select(materialId, _ShallowColor, _ShallowColor2, _ShallowColor3, _ShallowColor4, _ShallowColor5);

              shallowColor = lerp(NormalizeColorByAverage(shallowColor), shallowColor, zFade);
              shallowFadeColor = shallowColor * _PostShallowFadeTint;
              shallowColor *= _PostShallowTint;

              sssColor = _PostSssTint;
              frontColor = _PostFrontTint;
              forwardColor = 1.0;
            }

            float3 lightColorScaleByMax = ScaleColorByMax(lightColor);
            
            float3 albedo = 
                      (albedoForward * forwardColor 
                      + albedoFront * frontColor 
                      + albedoSSS * sssColor) * lightColor;
            
            albedo += (albedoShadowFade * shadowFadeColor
                      + albedoShadow * shadowColor
                      + albedoShallowFade * shallowFadeColor
                      + albedoShallow * shallowColor) * lightColorScaleByMax;

            // float a = abs(albedoShadowFade + albedoShadow + albedoShallowFade + albedoShallow + albedoSSS + albedoFront + albedoForward - 1.0) < 0.01;

            return float4(albedo * baseColor, baseAlpha);
        }
        
        ENDHLSL

      
        Pass
        {
            Name "ShadowCaster"
            Tags
            {
            "LightMode"="ShadowCaster"
                
            }
            ZWrite [_ZWrite]
            ZTest LEqual
            ColorMask 0
            Cull [_Cull]
            
            HLSLPROGRAM
            
            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON
            #pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
            #pragma vertex vert
            #pragma fragment frag
            
            float3 _LightDirection;
            float3 _LightPosition;

            struct Attributes
            {
                float4 positionOS   : POSITION;
                float3 normalOS     : NORMAL;
                float2 texcoord     : TEXCOORD0;
            };
            struct Varyings
            {
            float2 uv               : TEXCOORD0;
            float4 positionCS       : SV_POSITION;
            };
            
            float4 GetShadowPositionHClip(Attributes input)
            {
                float3 positionWS =  TransformObjectToWorld(input.positionOS.xyz);
                float3 normalWS = TransformObjectToWorldNormal(input.normalOS);
            #if CASTING_PUNCTUAL_LIGHT_SHADOW
                float3 lightDirectionWS = normalize(_LightPosition - positionWS);
            #else
                float3 lightDirectionWS = _LightDirection;
            #endif
                
                float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS,normalWS,lightDirectionWS));
            #if UNITY_REVERSED_Z
                positionCS.z =  min(positionCS.z,UNITY_NEAR_CLIP_VALUE);
            #else
                positionCS.z =  max(positionCS.z,UNITY_NEAR_CLIP_VALUE);
            #endif
    
                return positionCS;
            }


            Varyings vert(Attributes input)
            {
                Varyings output;
                output.uv = input.texcoord;
                output.positionCS = GetShadowPositionHClip(input);
                return output;
            }
            float4 frag(Varyings input):SV_TARGET
            {
                clip(1.0 -_AlphaClip);
                return 0;
            }
            
            ENDHLSL
        }
        
        Pass
        {
            Name"DepthOnly"
            Tags
            {
                "LightMode" = "DepthOnly"
            }
            
            ZWrite [_ZWrite]
            ColorMask 0
            Cull [_Cull]
            
            HLSLPROGRAM

            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON

            #pragma vertex vert
            #pragma fragment frag

            struct Attributes
            {
                float4 positionOS : POSITION;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
            };

            Varyings vert(Attributes input)
            {
                Varyings output = (Varyings)0;
                output.positionCS = TransformObjectToHClip(input.positionOS.xyz);

                return  output;
            }

            half4 frag(Varyings input): SV_TARGET
            {
                clip(1.0 - _AlphaClip);
                return 0;
            }
            ENDHLSL
        }

        Pass
        {
            Name "DepthNormals"
            Tags
            {
            "LightMode" = "DepthNormals"
            }
            ZWrite [_ZWrite]
            Cull [_Cull]
            
            HLSLPROGRAM

            #pragma multi_compile_instancing
            #pragma multi_compile _ DOTS_INSTANCING_ON
            #pragma vertex vert
            #pragma fragment frag
            
            struct Attributes
            {
                float4 positionOS   :POSITION;
                float4 tangentOS    :TANGENT;
                float2 texcoord     :TEXCOORD0;
                float3 normalOS     :NORMAL;
            };
            struct Varyings
            {
                float4 positionCS   :SV_POSITION;
                float2 uv           :TEXCOORD0;
                float3 normalWS     :TEXCOORD1;
                float4 tangentWS    :TEXCOORD2;  //xyz:tangent,w:sign
            };
            
            Varyings vert(Attributes input)
            {
                Varyings output = (Varyings)0;
                output.uv =input.texcoord;
                output.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                VertexPositionInputs vertexInput = GetVertexPositionInputs(input.positionOS.xyz);
                VertexNormalInputs normalInput = GetVertexNormalInputs(input.normalOS,input.tangentOS);

                half3 viewDirWS = GetWorldSpaceNormalizeViewDir(vertexInput.positionWS);
                output.normalWS = half3(normalInput.normalWS);
                float sign = input.tangentOS.w * float(GetOddNegativeScale());
                output.tangentWS = half4(normalInput.tangentWS.xyz, sign);
                return output;
            }
            half4 frag(Varyings input): SV_TARGET
            {
                clip(1.0 - _AlphaClip);
                float3 normalWS = input.normalWS.xyz;
                return half4(NormalizeNormalPerPixel(normalWS),0.0);
            }
            ENDHLSL
        }

        Pass
        {
            Name"UniversalForward"
            Tags
            {
                "LightMode" = "UniversalForward"
            }
            Cull [_Cull]
            Blend[_SrcBlendMode] [_DstBlendMode]
            BlendOp [_BlendOp]
            ZWrite [_ZWrite]
            Stencil
            {
                Ref [_StencilRef]
                Comp [_StencilComp]
                Pass [_StencilPassOp]
                Fail [_StencilFailOp]
                ZFail [_StencilZFailOp]
            }
            
            
            HLSLPROGRAM
            #pragma shader_feature_local _SCREEN_SPACE_RIM
            #pragma shader_feature_local _SCREEN_SPACE_SHADOW
            #pragma shader_feature_local _MATCAP_ON

            #pragma vertex MainVS
            #pragma fragment MainPS

            #pragma multi_compile_fog

            ENDHLSL
        }

        Pass
        {
          Name"UniversalForwardOnly"
          Tags
          {
              "LightMode" = "UniversalForwardOnly"
          }
          Cull Front
          ZWrite On
          
          HLSLPROGRAM
          #pragma shader_feature_local _OUTLINE_PASS
  
          #pragma vertex vert
          #pragma fragment frag
              
          #pragma multi_compile_fog

          // If your project has a faster way to get camera fov in shader, you can replace this slow function to your method.
          // For example, you write cmd.SetGlobalFloat("_CurrentCameraFOV",cameraFOV) using a new RendererFeature in C#.
          // For this tutorial shader, we will keep things simple and use this slower but convenient method to get camera fov
          float GetCameraFOV()
          {
              //https://answers.unity.com/questions/770838/how-can-i-extract-the-fov-information-from-the-pro.html
              float t = unity_CameraProjection._m11;
              float Rad2Deg = 180 / 3.1415;
              float fov = atan(1.0f / t) * 2.0 * Rad2Deg;
              return fov;
          }
          
          float ApplyOutlineDistanceFadeOut(float inputMulFix)
          {
              //make outline "fadeout" if character is too small in camera's view
              return saturate(inputMulFix);
          }
          
          float GetOutlineCameraFovAndDistanceFixMultiplier(float positionVS_Z)
          {
              float cameraMulFix;
              if(unity_OrthoParams.w == 0)
              {
                  ////////////////////////////////
                  // Perspective camera case
                  ////////////////////////////////
          
                  // keep outline similar width on screen accoss all camera distance       
                  cameraMulFix = abs(positionVS_Z);
          
                  // can replace to a tonemap function if a smooth stop is needed
                  cameraMulFix = ApplyOutlineDistanceFadeOut(cameraMulFix);
          
                  // keep outline similar width on screen accoss all camera fov
                  cameraMulFix *= GetCameraFOV();       
              }
              else
              {
                  ////////////////////////////////
                  // Orthographic camera case
                  ////////////////////////////////
                  float orthoSize = abs(unity_OrthoParams.y);
                  orthoSize = ApplyOutlineDistanceFadeOut(orthoSize);
                  cameraMulFix = orthoSize * 50; // 50 is a magic number to match perspective camera's outline width
              }
          
              return cameraMulFix * 0.00005; // mul a const to make return result = default normal expand amount WS
          }

          // Push an imaginary vertex towards camera in view space (linear, view space unit), 
          // then only overwrite original positionCS.z using imaginary vertex's result positionCS.z value
          // Will only affect ZTest ZWrite's depth value of vertex shader
          
          // Useful for:
          // -Hide ugly outline on face/eye
          // -Make eyebrow render on top of hair
          // -Solve ZFighting issue without moving geometry
          float4 NiloGetNewClipPosWithZOffset(float4 originalPositionCS, float viewSpaceZOffsetAmount)
          {
              if(unity_OrthoParams.w == 0)
              {
                  ////////////////////////////////
                  //Perspective camera case
                  ////////////////////////////////
                  float2 ProjM_ZRow_ZW = UNITY_MATRIX_P[2].zw;
                  float modifiedPositionVS_Z = -originalPositionCS.w + -viewSpaceZOffsetAmount; // push imaginary vertex
                  float modifiedPositionCS_Z = modifiedPositionVS_Z * ProjM_ZRow_ZW[0] + ProjM_ZRow_ZW[1];
                  originalPositionCS.z = modifiedPositionCS_Z * originalPositionCS.w / (-modifiedPositionVS_Z); // overwrite positionCS.z
                  return originalPositionCS;    
              }
              else
              {
                  ////////////////////////////////
                  //Orthographic camera case
                  ////////////////////////////////
                  originalPositionCS.z += -viewSpaceZOffsetAmount / _ProjectionParams.z; // push imaginary vertex and overwrite positionCS.z
                  return originalPositionCS;
              }
          }

          float3 OctToUnitVector(float2 oct)
          {
              float3 N = float3(oct, 1-dot(1,abs(oct)) );
              float t = max(-N.z,0);
              N.x += N.x >= 0 ? (-t) : t;
              N.y += N.y >= 0 ? (-t) : t;
              return normalize(N);
          }
          
          struct Attributes
          {
              float4 positionOS   :POSITION;
              float4 tangentOS    :TANGENT;
              float3 normalOS     :NORMAL;
              float2 texcoord     :TEXCOORD0;
              float2 texcoord1    :TEXCOORD1;
          };
  
          struct Varyings
          {
              float2 uv           :TEXCOORD0;
              float fogFactor     :TEXCOORD1;
              float4 positionCS   :SV_POSITION;
          };
          
          Varyings vert(Attributes input)
          {
            #if !_OUTLINE_PASS
                return (Varyings)0;
            #endif


            VertexPositionInputs positionInputs = GetVertexPositionInputs(input.positionOS.xyz);
            VertexNormalInputs normalInputs = GetVertexNormalInputs(input.normalOS, input.tangentOS);

            float width = _OutlineWidth;
            width *= GetOutlineCameraFovAndDistanceFixMultiplier(positionInputs.positionVS.z);

            float2 oct = input.texcoord1;
            float3 smoothNormal = OctToUnitVector(oct);
            float3x3 tbn = float3x3(
                normalInputs.tangentWS,
                normalInputs.bitangentWS,
                normalInputs.normalWS
            );
            smoothNormal = mul(smoothNormal, tbn);
            
            float3 positionWS = positionInputs.positionWS.xyz;
            // positionWS += normalInputs.normalWS * width;
            positionWS += smoothNormal * width;
            
            Varyings output = (Varyings)0;
            output.positionCS = NiloGetNewClipPosWithZOffset( TransformWorldToHClip(positionWS), _MaxOutlineZOffset);
            output.uv = input.texcoord;
            output.fogFactor = ComputeFogFactor(positionInputs.positionCS.z);

            return  output;
          }
  
          float4 frag(Varyings input) : SV_Target
          {
            #if !_OUTLINE_PASS
            clip(-1);
            #endif

            float3 outlineColor = 0;

            #if _DOMAIN_FACE
            {
                outlineColor =  _OutlineColor;
            }
            #elif _DOMAIN_BODY
            {
              float4 otherData = tex2D(_OtherDataTex, input.uv);
              int materialId = max(0, 4 - floor(otherData.x * 5)); 
              outlineColor = select(materialId, _OutlineColor, _OutlineColor2, _OutlineColor3, _OutlineColor4, _OutlineColor5);
            }
            #endif

            outlineColor *= 0.2;
            
            float4 color = float4(outlineColor, 1);
            color.rgb = MixFog(color.rgb, input.fogFactor);
            
            return color;
          }
          ENDHLSL
        }
        
    }
}