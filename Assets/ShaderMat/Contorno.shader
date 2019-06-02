Shader "Outlined/Silhouetted Diffuse" 
{

		Properties
		{
			_MainTex("Texture", 2D) = "white" {}
		}

		SubShader // this one choose a color to warp around
		{
			Pass {
					CGPROGRAM

					#pragma vertex vert             
					#pragma fragment frag

					struct vertInput {
						float4 pos : POSITION;
					};

					struct vertOutput {
						float4 pos : SV_POSITION;
					};

					vertOutput vert(vertInput input) {
						vertOutput o;
						o.pos = UnityObjectToClipPos(input.pos);
						return o;
					}

					half4 frag(vertOutput output) : COLOR {
						return half4(1.0, 0.0, 0.0, 1.0);
					}
					ENDCG
				}
		}
	
}

		