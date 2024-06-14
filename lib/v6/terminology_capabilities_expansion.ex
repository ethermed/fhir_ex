defmodule Fhir.v6().TerminologyCapabilitiesExpansion do
  use TypedStruct

  typedstruct do
    field(:_hierarchical, Fhir.v6().Element)
    field(:_incomplete, Fhir.v6().Element)
    field(:_paging, Fhir.v6().Element)
    field(:_textFilter, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:hierarchical, :boolean)
    field(:id, :string)
    field(:incomplete, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:paging, :boolean)
    field(:parameter, [Fhir.v6().TerminologyCapabilitiesParameter], default: [])
    field(:textFilter, :string)
  end
end
