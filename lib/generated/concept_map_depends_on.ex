defmodule Fhir.Generated.ConceptMapDependsOn do
  use TypedStruct

  typedstruct do
    field :_attribute, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueCode, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :attribute, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCode, :string
        field :valueCoding, Fhir.Generated.Coding
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueSet, :string
        field :valueString, :string
  end
end
