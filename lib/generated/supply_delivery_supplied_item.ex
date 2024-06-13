defmodule Fhir.Generated.SupplyDeliverySuppliedItem do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :itemCodeableConcept, Fhir.Generated.CodeableConcept
        field :itemReference, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :quantity, Fhir.Generated.Quantity
  end
end
