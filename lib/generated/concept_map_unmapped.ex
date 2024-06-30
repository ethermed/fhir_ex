defmodule Fhir.ConceptMapUnmapped do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_display, Fhir.Element)
    field(:_mode, Fhir.Element)
    field(:_relationship, Fhir.Element)
    field(:code, :string)
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:otherMap, :string)
    field(:relationship, :string)
    field(:valueSet, :string)
  end
end
