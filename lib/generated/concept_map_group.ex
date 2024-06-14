defmodule Fhir.ConceptMapGroup do
  use TypedStruct

  typedstruct do
    field(:element, [Fhir.ConceptMapElement], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:source, :string)
    field(:target, :string)
    field(:unmapped, Fhir.ConceptMapUnmapped)
  end
end
