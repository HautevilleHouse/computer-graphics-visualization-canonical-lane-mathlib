import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure RayTracingIntegratorPackage where
  rayGeneration : Prop
  intersectionTest : Prop
  shadingEvaluation : Prop
  recursiveReflection : Prop
  monteCarloSampling : Prop

structure RayTracingIntegratorEvidence (P : RayTracingIntegratorPackage) where
  rayGenerationClosed : P.rayGeneration
  intersectionTestClosed : P.intersectionTest
  shadingEvaluationClosed : P.shadingEvaluation
  recursiveReflectionClosed : P.recursiveReflection
  monteCarloSamplingClosed : P.monteCarloSampling

def RayTracingIntegratorClosed (P : RayTracingIntegratorPackage) : Prop :=
  P.rayGeneration ∧ P.intersectionTest ∧ P.shadingEvaluation ∧ P.recursiveReflection ∧ P.monteCarloSampling

theorem ray_tracing_integrator_closed_from_evidence (P : RayTracingIntegratorPackage) (E : RayTracingIntegratorEvidence P) : RayTracingIntegratorClosed P := by
  exact And.intro E.rayGenerationClosed (And.intro E.intersectionTestClosed (And.intro E.shadingEvaluationClosed (And.intro E.recursiveReflectionClosed E.monteCarloSamplingClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse