defmodule Fhir.TerminologyCapabilitiesExpansion do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_hierarchical, Fhir.Element)
    field(:_incomplete, Fhir.Element)
    field(:_paging, Fhir.Element)
    field(:_textFilter, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:hierarchical, :boolean)
    field(:id, :string)
    field(:incomplete, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:paging, :boolean)
    field(:parameter, [Fhir.TerminologyCapabilitiesParameter], default: [])
    field(:textFilter, :string)
  end
end
