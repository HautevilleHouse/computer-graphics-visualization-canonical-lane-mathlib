import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure VisibilityDeterminationPackage where
  zBufferTest : Prop
  painterAlgorithm : Prop
  binarySpacePartition : Prop
  occlusionCulling : Prop

structure VisibilityDeterminationEvidence (P : VisibilityDeterminationPackage) where
  zBufferTestClosed : P.zBufferTest
  painterAlgorithmClosed : P.painterAlgorithm
  binarySpacePartitionClosed : P.binarySpacePartition
  occlusionCullingClosed : P.occlusionCulling

def VisibilityDeterminationClosed (P : VisibilityDeterminationPackage) : Prop :=
  P.zBufferTest ∧ P.painterAlgorithm ∧ P.binarySpacePartition ∧ P.occlusionCulling

theorem visibility_determination_closed_from_evidence (P : VisibilityDeterminationPackage) (E : VisibilityDeterminationEvidence P) : VisibilityDeterminationClosed P := by
  exact And.intro E.zBufferTestClosed (And.intro E.painterAlgorithmClosed (And.intro E.binarySpacePartitionClosed E.occlusionCullingClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse