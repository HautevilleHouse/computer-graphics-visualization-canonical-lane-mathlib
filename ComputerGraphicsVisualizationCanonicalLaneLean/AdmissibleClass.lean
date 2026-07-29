import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure CGVAdmittedObject where
  renderingPipelineClosed : Prop
  imageFormationClosed : Prop
  visualAttentionClosed : Prop
  displayPipelineClosed : Prop
  realTimeInteractionClosed : Prop
  visualizationAnalyticsClosed : Prop
  conclusion : renderingPipelineClosed ∧ imageFormationClosed ∧ visualAttentionClosed ∧ displayPipelineClosed ∧ realTimeInteractionClosed ∧ visualizationAnalyticsClosed

structure AdmissibleClass where
  object : CGVAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.renderingPipelineClosed ∧ A.object.imageFormationClosed ∧ A.object.visualAttentionClosed ∧ A.object.displayPipelineClosed ∧ A.object.realTimeInteractionClosed ∧ A.object.visualizationAnalyticsClosed) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse