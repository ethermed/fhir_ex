defmodule Fhir.Generated.ConceptMapElement do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :_noMap, Fhir.Generated.Element
        field :code, :string
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :noMap, :boolean
        field :target, [Fhir.Generated.ConceptMapTarget], default: []
        field :valueSet, :string
  end
end
