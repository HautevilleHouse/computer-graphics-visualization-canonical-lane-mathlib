import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure ColorSciencePackage where
  colorSpaceDefined : Prop
  gamutMapping : Prop
  toneReproduction : Prop
  colorGrading : Prop

structure ColorScienceEvidence (C : ColorSciencePackage) where
  colorSpaceDefinedClosed : C.colorSpaceDefined
  gamutMappingClosed : C.gamutMapping
  toneReproductionClosed : C.toneReproduction
  colorGradingClosed : C.colorGrading

def ColorScienceClosed (C : ColorSciencePackage) : Prop :=
  C.colorSpaceDefined ∧ C.gamutMapping ∧ C.toneReproduction ∧ C.colorGrading

theorem color_science_closed_from_evidence (C : ColorSciencePackage)
    (E : ColorScienceEvidence C) : ColorScienceClosed C := by
  exact And.intro E.colorSpaceDefinedClosed
    (And.intro E.gamutMappingClosed
      (And.intro E.toneReproductionClosed E.colorGradingClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse