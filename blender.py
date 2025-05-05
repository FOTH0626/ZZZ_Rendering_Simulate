import bpy
from mathutils import *
from math import *
import numpy as np

dict = {}

mesh = bpy.data.meshes['星見雅 配布用.009']

mesh.calc_tangents(uvmap='UVMap2Unity')

def included_angle(v0, v1):
    return np.arccos(v0.dot(v1)/(v0.length * v1.length))

def unitVectorToOct(v):
    d = abs(v.x) + abs(v.y) + abs(v.z)
    o = Vector((v.x / d, v.y / d))
    if v.z <= 0:
        o.x = (1 - abs(o.y)) * (1 if o.x >= 0 else -1)
        o.y = (1 - abs(o.x)) * (1 if o.y >= 0 else -1)
    return o
        
for vertex in mesh.vertices:
    dict[str(vertex.co)] = []
    
for poly in mesh.polygons:
    l0 = mesh.loops[poly.loop_start]
    l1 = mesh.loops[poly.loop_start + 1]
    l2 = mesh.loops[poly.loop_start + 2]
    
    v0 = mesh.vertices[l0.vertex_index]
    v1 = mesh.vertices[l1.vertex_index]
    v2 = mesh.vertices[l2.vertex_index]
    
    vec0 = v1.co - v0.co
    vec1 = v2.co - v0.co
    
    n = vec0.cross(vec1)
    n = n.normalized()
    
    k0 = str(v0.co)
    k1 = str(v1.co)
    k2 = str(v2.co)
    
    if k0 in dict:
        w = included_angle(v2.co - v0.co, v1.co - v0.co)
        dict[k0].append({"n": n, "w": w})
    if k1 in dict:
        w = included_angle(v2.co - v1.co, v0.co - v1.co)
        dict[k1].append({"n": n, "w": w})   
    if k2 in dict:
        w = included_angle(v1.co - v2.co, v0.co - v2.co)
        dict[k2].append({"n": n, "w": w})     
        
for poly  in mesh.polygons:
    for loop_index in range(poly.loop_start, poly.loop_start+3):
        l = mesh.loops[loop_index]
        vertex_index = l.vertex_index
        v = mesh.vertices[vertex_index]
        smoothNormal = Vector((0,0,0))
        weightSum = 0
        k = str(v.co)
        if k in dict:
            a = dict[k]
            for d in a:
                n = d['n']
                w = d['w']
                smoothNormal += n * w
                weightSum += w
        if smoothNormal.length != 0:
            smoothNormal /= weightSum
            smoothNormal = smoothNormal.normalized()
        else:
            smoothNormal = l.normal
        
        normal = l.normal
        tangent = l.tangent
        bitangent = l.bitangent
        
        x = tangent.dot(smoothNormal)
        y = bitangent.dot(smoothNormal)
        z = normal.dot(smoothNormal)
        
        uv1 = mesh.uv_layers['UV 贴图2Unity'].uv[loop_index]
        
        uv1.vector = unitVectorToOct(Vector((x,y,z)))