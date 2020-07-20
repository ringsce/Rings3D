void tangent_orco_x(vec3 orco_in, out vec3 orco_out)
{
  orco_out = orco_in.xzy * vec3(0.0, -0.5, 0.5) + vec3(0.0, 0.25, -0.25);
}

void tangent_orco_y(vec3 orco_in, out vec3 orco_out)
{
  orco_out = orco_in.zyx * vec3(-0.5, 0.0, 0.5) + vec3(0.25, 0.0, -0.25);
}

void tangent_orco_z(vec3 orco_in, out vec3 orco_out)
{
  orco_out = orco_in.yxz * vec3(-0.5, 0.5, 0.0) + vec3(0.25, -0.25, 0.0);
}

void node_tangentmap(vec4 attr_tangent, out vec3 tangent)
{
  tangent = normalize(attr_tangent.xyz);
}

void node_tangent(vec3 N, vec3 orco, mat4 objmat, out vec3 T)
{
  T = (objmat * vec4(orco, 0.0)).xyz;
  T = cross(N, normalize(cross(T, N)));
}
