#version 150

in vec3 Position;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;

// Thinking about just putting the health bar above the hearts
// TODO: fix this changing other things (not sure if possible)
void main() {
	gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	vertexColor = Color;
	//if (
	//	gl_Position.x > -2.0 && gl_Position.x < 0.5 &&
	//	gl_Position.y > -0.9 && gl_Position.y < 0.6
	//) {
	//	vertexColor.a = 0;
	//}
}