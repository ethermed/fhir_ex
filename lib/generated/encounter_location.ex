defmodule Fhir.EncounterLocation do
  use TypedStruct

  typedstruct do
    field(:_status, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:form, Fhir.CodeableConcept)
    field(:id, :string)
    field(:location, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:status, :string)
  end
end
