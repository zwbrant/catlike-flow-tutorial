#if !defined(FLOW_INCLUDED)
#define FLOW_INCLUDED

float3 FlowUVW(float2 uv, float2 flowVector, float time) {
	float progress = frac(time);

	float3 uvw;
	uvw.xy = uv - flowVector * progress;
	uvw.z = 1 - abs(1 - 2 * progress);

	return uvw;
}

#endif