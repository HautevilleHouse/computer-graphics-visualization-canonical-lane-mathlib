import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure RasterizationPipelinePackage where
  vertexProcessing : Prop
  primitiveAssembly : Prop
  rasterization : Prop
  fragmentProcessing : Prop
  framebufferOutput : Prop

structure RasterizationPipelineEvidence (P : RasterizationPipelinePackage) where
  vertexProcessingClosed : P.vertexProcessing
  primitiveAssemblyClosed : P.primitiveAssembly
  rasterizationClosed : P.rasterization
  fragmentProcessingClosed : P.fragmentProcessing
  framebufferOutputClosed : P.framebufferOutput

def RasterizationPipelineClosed (P : RasterizationPipelinePackage) : Prop :=
  P.vertexProcessing ∧ P.primitiveAssembly ∧ P.rasterization ∧ P.fragmentProcessing ∧ P.framebufferOutput

theorem rasterization_pipeline_closed_from_evidence (P : RasterizationPipelinePackage) (E : RasterizationPipelineEvidence P) : RasterizationPipelineClosed P := by
  exact And.intro E.vertexProcessingClosed (And.intro E.primitiveAssemblyClosed (And.intro E.rasterizationClosed (And.intro E.fragmentProcessingClosed E.framebufferOutputClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse