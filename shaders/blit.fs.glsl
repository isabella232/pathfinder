#version 330

// pathfinder/shaders/blit.fs.glsl
//
// Copyright © 2020 The Pathfinder Project Developers.
//
// Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
// http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
// <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
// option. This file may not be copied, modified, or distributed
// except according to those terms.

precision highp float;

#ifdef GL_ES
precision highp sampler2D;
#endif

uniform sampler2D uSrc;

in vec2 vTexCoord;

out vec4 oFragColor;

void main() {
    vec4 color = texture(uSrc, vTexCoord);
    oFragColor = color;
}
