import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure GPUComputePackage where
  vertexShader : Prop
  geometryShader : Prop
  tesselation : Prop
  computeShader : Prop

structure GPUComputeEvidence (G : GPUComputePackage) where
  vertexShaderClosed : G.vertexShader
  geometryShaderClosed : G.geometryShader
  tesselationClosed : G.tesselation
  computeShaderClosed : G.computeShader

def GPUComputeClosed (G : GPUComputePackage) : Prop :=
  G.vertexShader ∧ G.geometryShader ∧ G.tesselation ∧ G.computeShader

theorem gpu_compute_closed_from_evidence (G : GPUComputePackage)
    (E : GPUComputeEvidence G) : GPUComputeClosed G := by
  exact And.intro E.vertexShaderClosed
    (And.intro E.geometryShaderClosed
      (And.intro E.tesselationClosed E.computeShaderClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse