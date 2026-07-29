import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsVisualizationCanonicalLaneLean

structure LightTransportPackage where
  directIllumination : Prop
  indirectIllumination : Prop
  subsurfaceScattering : Prop
  volumeRendering : Prop

structure LightTransportEvidence (L : LightTransportPackage) where
  directIlluminationClosed : L.directIllumination
  indirectIlluminationClosed : L.indirectIllumination
  subsurfaceScatteringClosed : L.subsurfaceScattering
  volumeRenderingClosed : L.volumeRendering

def LightTransportClosed (L : LightTransportPackage) : Prop :=
  L.directIllumination ∧ L.indirectIllumination ∧ L.subsurfaceScattering ∧ L.volumeRendering

theorem light_transport_closed_from_evidence (L : LightTransportPackage)
    (E : LightTransportEvidence L) : LightTransportClosed L := by
  exact And.intro E.directIlluminationClosed
    (And.intro E.indirectIlluminationClosed
      (And.intro E.subsurfaceScatteringClosed E.volumeRenderingClosed))

end ComputerGraphicsVisualizationCanonicalLaneLean
end HautevilleHouse