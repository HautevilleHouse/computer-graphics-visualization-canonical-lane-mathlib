import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure TextureMappingPackage where
  uvCoordinates : Prop
  textureSampling : Prop
  filteringMethod : Prop
  mipmapping : Prop

structure TextureMappingEvidence (T : TextureMappingPackage) where
  uvCoordinatesClosed : T.uvCoordinates
  textureSamplingClosed : T.textureSampling
  filteringMethodClosed : T.filteringMethod
  mipmappingClosed : T.mipmapping

def TextureMappingClosed (T : TextureMappingPackage) : Prop :=
  T.uvCoordinates ∧ T.textureSampling ∧ T.filteringMethod ∧ T.mipmapping

theorem texture_mapping_closed_from_evidence (T : TextureMappingPackage)
    (E : TextureMappingEvidence T) : TextureMappingClosed T := by
  exact And.intro E.uvCoordinatesClosed
    (And.intro E.textureSamplingClosed
      (And.intro E.filteringMethodClosed E.mipmappingClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse