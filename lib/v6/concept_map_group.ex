defmodule Fhir.v6().ConceptMapGroup do
  use TypedStruct

  typedstruct do
    field(:element, [Fhir.v6().ConceptMapElement], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, :string)
    field(:target, :string)
    field(:unmapped, Fhir.v6().ConceptMapUnmapped)
  end
end
