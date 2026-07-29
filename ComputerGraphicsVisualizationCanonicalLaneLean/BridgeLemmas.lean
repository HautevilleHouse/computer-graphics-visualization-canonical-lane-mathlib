import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputerGraphicsVisualizationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.renderingPipelineClosed ∧ A.object.imageFormationClosed ∧ A.object.visualAttentionClosed ∧ A.object.displayPipelineClosed ∧ A.object.realTimeInteractionClosed ∧ A.object.visualizationAnalyticsClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse