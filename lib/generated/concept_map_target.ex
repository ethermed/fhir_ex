defmodule Fhir.Generated.ConceptMapTarget do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_comment, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :_relationship, Fhir.Generated.Element
        field :code, :string
        field :comment, :string
        field :dependsOn, [Fhir.Generated.ConceptMapDependsOn], default: []
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :product, [Fhir.Generated.ConceptMapDependsOn], default: []
        field :property, [Fhir.Generated.ConceptMapProperty1], default: []
        field :relationship, :string
        field :valueSet, :string
  end
end
