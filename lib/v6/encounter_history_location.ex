defmodule Fhir.v6().EncounterHistoryLocation do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:form, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:location, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
