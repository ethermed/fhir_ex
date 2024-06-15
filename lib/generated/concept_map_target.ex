defmodule Fhir.ConceptMapTarget do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :_comment, Fhir.Element
        field :_display, Fhir.Element
        field :_relationship, Fhir.Element
        field :code, :string
        field :comment, :string
        field :dependsOn, [Fhir.ConceptMapDependsOn], default: []
        field :display, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :product, [Fhir.ConceptMapDependsOn], default: []
        field :property, [Fhir.ConceptMapProperty1], default: []
        field :relationship, :string
        field :valueSet, :string
  end
end
