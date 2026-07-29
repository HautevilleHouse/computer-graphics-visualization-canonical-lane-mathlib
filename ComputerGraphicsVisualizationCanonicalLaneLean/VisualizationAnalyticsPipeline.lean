import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure VisualizationAnalyticsPackage where
  dataFiltering : Prop
  statisticalAggregation : Prop
  visualMapping : Prop
  interactiveExploration : Prop
  insightCommunication : Prop

structure VisualizationAnalyticsEvidence (V : VisualizationAnalyticsPackage) where
  dataFilteringClosed : V.dataFiltering
  statisticalAggregationClosed : V.statisticalAggregation
  visualMappingClosed : V.visualMapping
  interactiveExplorationClosed : V.interactiveExploration
  insightCommunicationClosed : V.insightCommunication

def VisualizationAnalyticsClosed (V : VisualizationAnalyticsPackage) : Prop :=
  V.dataFiltering ∧ V.statisticalAggregation ∧ V.visualMapping ∧ V.interactiveExploration ∧ V.insightCommunication

theorem visualization_analytics_closed_from_evidence (V : VisualizationAnalyticsPackage) (E : VisualizationAnalyticsEvidence V) : VisualizationAnalyticsClosed V := by
  exact And.intro E.dataFilteringClosed (And.intro E.statisticalAggregationClosed (And.intro E.visualMappingClosed (And.intro E.interactiveExplorationClosed E.insightCommunicationClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse