import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure VisualAttentionPackage where
  saliencyDetection : Prop
  foveatedRendering : Prop
  gazeTracking : Prop
  adaptiveDetail : Prop
  qualityAssessment : Prop

structure VisualAttentionEvidence (V : VisualAttentionPackage) where
  saliencyDetectionClosed : V.saliencyDetection
  foveatedRenderingClosed : V.foveatedRendering
  gazeTrackingClosed : V.gazeTracking
  adaptiveDetailClosed : V.adaptiveDetail
  qualityAssessmentClosed : V.qualityAssessment

def VisualAttentionClosed (V : VisualAttentionPackage) : Prop :=
  V.saliencyDetection ∧ V.foveatedRendering ∧ V.gazeTracking ∧ V.adaptiveDetail ∧ V.qualityAssessment

theorem visual_attention_closed_from_evidence (V : VisualAttentionPackage) (E : VisualAttentionEvidence V) : VisualAttentionClosed V := by
  exact And.intro E.saliencyDetectionClosed (And.intro E.foveatedRenderingClosed (And.intro E.gazeTrackingClosed (And.intro E.adaptiveDetailClosed E.qualityAssessmentClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse