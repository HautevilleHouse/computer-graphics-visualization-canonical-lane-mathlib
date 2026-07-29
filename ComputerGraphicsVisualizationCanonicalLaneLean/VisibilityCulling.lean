import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure VisibilityCullingPackage where
  frustumCulling : Prop
  occlusionCulling : Prop
  backfaceCulling : Prop
  depthTesting : Prop
  visibilityDetermination : Prop

structure VisibilityCullingEvidence (V : VisibilityCullingPackage) where
  frustumCullingClosed : V.frustumCulling
  occlusionCullingClosed : V.occlusionCulling
  backfaceCullingClosed : V.backfaceCulling
  depthTestingClosed : V.depthTesting
  visibilityDeterminationClosed : V.visibilityDetermination

def VisibilityCullingClosed (V : VisibilityCullingPackage) : Prop :=
  V.frustumCulling ∧ V.occlusionCulling ∧ V.backfaceCulling ∧ V.depthTesting ∧ V.visibilityDetermination

theorem visibility_culling_closed_from_evidence (V : VisibilityCullingPackage) (E : VisibilityCullingEvidence V) : VisibilityCullingClosed V := by
  exact And.intro E.frustumCullingClosed
    (And.intro E.occlusionCullingClosed
      (And.intro E.backfaceCullingClosed
        (And.intro E.depthTestingClosed E.visibilityDeterminationClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse