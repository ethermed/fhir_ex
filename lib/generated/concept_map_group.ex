defmodule Fhir.Generated.ConceptMapGroup do
  use TypedStruct

  typedstruct do
    field :element, [Fhir.Generated.ConceptMapElement], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, :string
        field :target, :string
        field :unmapped, Fhir.Generated.ConceptMapUnmapped
  end
end
