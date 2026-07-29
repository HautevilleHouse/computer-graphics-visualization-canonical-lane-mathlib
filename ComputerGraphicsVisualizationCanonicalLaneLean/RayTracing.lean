import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure RayTracingPackage where
  rayGeneration : Prop
  rayIntersection : Prop
  shadingComputation : Prop
  accumulation : Prop

structure RayTracingEvidence (R : RayTracingPackage) where
  rayGenerationClosed : R.rayGeneration
  rayIntersectionClosed : R.rayIntersection
  shadingComputationClosed : R.shadingComputation
  accumulationClosed : R.accumulation

def RayTracingClosed (R : RayTracingPackage) : Prop :=
  R.rayGeneration ∧ R.rayIntersection ∧ R.shadingComputation ∧ R.accumulation

theorem ray_tracing_closed_from_evidence (R : RayTracingPackage)
    (E : RayTracingEvidence R) : RayTracingClosed R := by
  exact And.intro E.rayGenerationClosed
    (And.intro E.rayIntersectionClosed
      (And.intro E.shadingComputationClosed E.accumulationClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse