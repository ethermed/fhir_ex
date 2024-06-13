defmodule Fhir.Generated.SpecimenContainer do
  use TypedStruct

  typedstruct do
    field :device, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :location, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :specimenQuantity, Fhir.Generated.Quantity
  end
end
