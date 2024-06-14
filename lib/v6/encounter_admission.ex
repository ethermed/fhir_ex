defmodule Fhir.v6().EncounterAdmission do
  use TypedStruct

  typedstruct do
    field(:admitSource, Fhir.v6().CodeableConcept)
    field(:destination, Fhir.v6().Reference)
    field(:dischargeDisposition, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:origin, Fhir.v6().Reference)
    field(:preAdmissionIdentifier, Fhir.v6().Identifier)
    field(:reAdmission, Fhir.v6().CodeableConcept)
  end
end
