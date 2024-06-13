defmodule Fhir.Generated.MedicationRequestInitialFill do
  use TypedStruct

  typedstruct do
    field :duration, Fhir.Generated.Duration
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Quantity
  end
end
