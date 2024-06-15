defmodule Fhir.CoverageClass do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_name, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :type, Fhir.CodeableConcept
        field :value, Fhir.Identifier
  end
end
