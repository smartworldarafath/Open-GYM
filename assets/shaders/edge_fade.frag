#version 460 core
#include <flutter/runtime_effect.glsl>

precision highp float;

uniform vec2 uSize;
uniform float uReach;
uniform float uFrom;
uniform float uTo;
uniform float uTop;
uniform sampler2D uTexture;

out vec4 fragColor;

void main() {
  vec2 p = FlutterFragCoord().xy;
  vec2 uv = p / uSize;
#ifdef IMPELLER_TARGET_OPENGLES
  uv.y = 1.0 - uv.y;
#endif
  float d = uTop > 0.5 ? p.y : uSize.y - p.y;
  float k = clamp(d / max(uReach, 1.0), 0.0, 1.0);
  float a = 1.0 - smoothstep(uFrom, uTo, k);
  vec4 c = texture(uTexture, uv);
  if (c.a > 0.004) c /= c.a;
  fragColor = c * a;
}
