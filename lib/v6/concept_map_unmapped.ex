defmodule Fhir.v6().ConceptMapUnmapped do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_display, Fhir.v6().Element)
    field(:_mode, Fhir.v6().Element)
    field(:_relationship, Fhir.v6().Element)
    field(:code, :string)
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:otherMap, :string)
    field(:relationship, :string)
    field(:valueSet, :string)
  end
end
