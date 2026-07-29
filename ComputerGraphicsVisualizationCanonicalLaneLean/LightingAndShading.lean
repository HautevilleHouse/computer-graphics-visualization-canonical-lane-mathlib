import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure LightingAndShadingPackage where
  illuminationModel : Prop
  lightTransport : Prop
  materialResponse : Prop
  shadingEquation : Prop
  shadowComputation : Prop

structure LightingAndShadingEvidence (L : LightingAndShadingPackage) where
  illuminationModelClosed : L.illuminationModel
  lightTransportClosed : L.lightTransport
  materialResponseClosed : L.materialResponse
  shadingEquationClosed : L.shadingEquation
  shadowComputationClosed : L.shadowComputation

def LightingAndShadingClosed (L : LightingAndShadingPackage) : Prop :=
  L.illuminationModel ∧ L.lightTransport ∧ L.materialResponse ∧ L.shadingEquation ∧ L.shadowComputation

theorem lighting_and_shading_closed_from_evidence (L : LightingAndShadingPackage) (E : LightingAndShadingEvidence L) : LightingAndShadingClosed L := by
  exact And.intro E.illuminationModelClosed
    (And.intro E.lightTransportClosed
      (And.intro E.materialResponseClosed
        (And.intro E.shadingEquationClosed E.shadowComputationClosed)))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse