defmodule Fhir.Generated.MedicationKnowledgeMaxDispense do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Duration
        field :quantity, Fhir.Generated.Quantity
  end
end
