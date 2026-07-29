import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure DisplayPipelinePackage where
  frameBuffer : Prop
  colorGrading : Prop
  toneMapping : Prop
  gammaCorrection : Prop
  outputDriver : Prop

structure DisplayPipelineEvidence (D : DisplayPipelinePackage) where
  frameBufferClosed : D.frameBuffer
  colorGradingClosed : D.colorGrading
  toneMappingClosed : D.toneMapping
  gammaCorrectionClosed : D.gammaCorrection
  outputDriverClosed : D.outputDriver

def DisplayPipelineClosed (D : DisplayPipelinePackage) : Prop :=
  D.frameBuffer ∧ D.colorGrading ∧ D.toneMapping ∧ D.gammaCorrection ∧ D.outputDriver

theorem display_pipeline_closed_from_evidence (D : DisplayPipelinePackage) (E : DisplayPipelineEvidence D) : DisplayPipelineClosed D := by
  exact And.intro E.frameBufferClosed (And.intro E.colorGradingClosed (And.intro E.toneMappingClosed (And.intro E.gammaCorrectionClosed E.outputDriverClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse