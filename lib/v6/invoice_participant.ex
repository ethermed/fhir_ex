defmodule Fhir.v6().InvoiceParticipant do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:role, Fhir.v6().CodeableConcept)
  end
end
