defmodule Fhir.Generated.UsageContext do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.Coding
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueReference, Fhir.Generated.Reference
  end
end
