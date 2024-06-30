defmodule Fhir.EncounterAdmission do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:admitSource, Fhir.CodeableConcept)
    field(:destination, Fhir.Reference)
    field(:dischargeDisposition, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:origin, Fhir.Reference)
    field(:preAdmissionIdentifier, Fhir.Identifier)
    field(:reAdmission, Fhir.CodeableConcept)
  end
end
