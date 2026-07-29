import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure ImageFormationPackage where
  sensorModel : Prop
  lensCompensation : Prop
  digitization : Prop
  colorEncoding : Prop
  compression : Prop

structure ImageFormationEvidence (I : ImageFormationPackage) where
  sensorModelClosed : I.sensorModel
  lensCompensationClosed : I.lensCompensation
  digitizationClosed : I.digitization
  colorEncodingClosed : I.colorEncoding
  compressionClosed : I.compression

def ImageFormationClosed (I : ImageFormationPackage) : Prop :=
  I.sensorModel ∧ I.lensCompensation ∧ I.digitization ∧ I.colorEncoding ∧ I.compression

theorem image_formation_closed_from_evidence (I : ImageFormationPackage) (E : ImageFormationEvidence I) : ImageFormationClosed I := by
  exact And.intro E.sensorModelClosed (And.intro E.lensCompensationClosed (And.intro E.digitizationClosed (And.intro E.colorEncodingClosed E.compressionClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse