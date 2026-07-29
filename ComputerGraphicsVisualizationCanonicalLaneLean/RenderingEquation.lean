import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure RenderingEquationPackage where
  radianceModel : Prop
  brdfDefined : Prop
  lightTransport : Prop
  energyConservation : Prop

structure RenderingEquationEvidence (P : RenderingEquationPackage) where
  radianceModelClosed : P.radianceModel
  brdfDefinedClosed : P.brdfDefined
  lightTransportClosed : P.lightTransport
  energyConservationClosed : P.energyConservation

def RenderingEquationClosed (P : RenderingEquationPackage) : Prop :=
  P.radianceModel ∧ P.brdfDefined ∧ P.lightTransport ∧ P.energyConservation

theorem rendering_equation_closed_from_evidence (P : RenderingEquationPackage) (E : RenderingEquationEvidence P) : RenderingEquationClosed P := by
  exact And.intro E.radianceModelClosed (And.intro E.brdfDefinedClosed (And.intro E.lightTransportClosed E.energyConservationClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse