defmodule Fhir.Generated.MonetaryComponent do
  use TypedStruct

  typedstruct do
    field :_factor, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :amount, Fhir.Generated.Money
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :type, :string
  end
end
