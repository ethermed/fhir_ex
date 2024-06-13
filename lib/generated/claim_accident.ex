defmodule Fhir.Generated.ClaimAccident do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :date, :date
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :locationAddress, Fhir.Generated.Address
        field :locationReference, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
