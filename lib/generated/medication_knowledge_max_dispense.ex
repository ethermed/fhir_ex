defmodule Fhir.MedicationKnowledgeMaxDispense do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Duration)
    field(:quantity, Fhir.Quantity)
  end
end
