defmodule Fhir.v6().MedicationKnowledgeMaxDispense do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Duration)
    field(:quantity, Fhir.v6().Quantity)
  end
end
