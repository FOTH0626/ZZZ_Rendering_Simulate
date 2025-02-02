# ZZZ Render

flow this tutorials on bilibili  
[【Unity/虚幻5/Blender】3种引擎 绝区零风格 卡通渲染 星见雅 完整流程](https://www.bilibili.com/video/BV1kBBKYRE6Q)



- Editor:  Unity Version 2021.3.45f1c1 
- Project: Official Templates :URP 3D Sample 

I will show Render Changes in this README

# Texture
All Magic is in Linear Color Space instead of Gamma Space

## Base Color

## Red Magic
- R : Material Index
- G : Metallic info
- B ： Highligths Mask

## Gray Magic
- RG : Normal 
- B : Diffuse Bias

## Orange Magic
- R : idk , seems base color's alpha
- G : Smoothness
- B : mask of MatCap

## MatCap Texture:
- Metallic reflection
- pantyhose/stockings
- Highlight

## Face
- RGB ：Face Color
- A : nose line

## Face Green Magic
- R : SDF grayscale value
- G : smoothness offset of change
- B : outline width
- A : mask , interpolate to Lambert

BaseColor 
![](Image/BaseColor.png)

Outline(look at the Skin's outline is **Red** and Cloth is **Gray** )
![](Image/Outline.png)

Lambert Light and Shadow
![](Image/Lambert.png)

Screen Space Shadow
![](Image/ScreenSpaceShadow.png)

SDF Face Shadow
![](Image/SDF%20Face%20Shadow.png)

Nose Line
![](Image/NoseLine.png)

MatCap (include gauntlet(metal armor on the arm) and pantyhose)
![](Image/MatCap.png)

Gamma
![](Image/Gamma.png)

Specular
![](Image/Specular.png)

Ambient
![](Image/Ambient.png)

RimLight
![](Image/RimLight.png)

Eye ( include Eye highlights ,Eye Translucent)
![](Image/Eye.png)