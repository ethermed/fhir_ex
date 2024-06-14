defmodule Fhir.v6().EncounterLocation do
  use TypedStruct

  typedstruct do
    field(:_status, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:form, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:location, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:status, :string)
  end
end
