defmodule Fhir.ConceptMapDependsOn do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_attribute, Fhir.Element
        field :_valueBoolean, Fhir.Element
        field :_valueCode, Fhir.Element
        field :_valueString, Fhir.Element
        field :attribute, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :valueBoolean, :boolean
        field :valueCode, :string
        field :valueCoding, Fhir.Coding
        field :valueQuantity, Fhir.Quantity
        field :valueSet, :string
        field :valueString, :string
  end
end
