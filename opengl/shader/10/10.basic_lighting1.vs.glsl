//物体的顶点着色器
//新增获得物体变换到世界坐标系后的顶点法线
#version 330 core
//输入
layout (location=0) in vec3 aPos;
layout (location=1) in vec3 aNormal;

//输出
out vec3 FragPos;//传输给片段着色器的顶点位置
out vec3 Normal;//传输给片段着色器的顶点法线

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(){
    FragPos = vec3(model * vec4(aPos,1.0f));//移动到世界坐标系中的某个位置

    //一般为了降低计算量，可以先算好法线矩阵，然后传给uniform值
    Normal = mat3(transpose(inverse(model))) * aNormal;//获得物体变换到世界坐标系后的顶点法线

    gl_Position = projection * view * vec4(FragPos,1.0f);
}
