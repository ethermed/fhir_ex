defmodule Fhir.InvoiceParticipant do
  use TypedStruct

  typedstruct do
    field(:actor, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:role, Fhir.CodeableConcept)
  end
end
