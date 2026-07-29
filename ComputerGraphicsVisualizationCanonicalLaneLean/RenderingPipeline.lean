import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure RenderingPipelinePackage where
  rasterizationStage : Prop
  shadingStage : Prop
  fragmentProcessing : Prop
  outputMerger : Prop

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  rasterizationStageClosed : R.rasterizationStage
  shadingStageClosed : R.shadingStage
  fragmentProcessingClosed : R.fragmentProcessing
  outputMergerClosed : R.outputMerger

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.rasterizationStage ∧ R.shadingStage ∧ R.fragmentProcessing ∧ R.outputMerger

theorem rendering_pipeline_closed_from_evidence (R : RenderingPipelinePackage)
    (E : RenderingPipelineEvidence R) : RenderingPipelineClosed R := by
  exact And.intro E.rasterizationStageClosed
    (And.intro E.shadingStageClosed
      (And.intro E.fragmentProcessingClosed E.outputMergerClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse