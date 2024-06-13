defmodule Fhir.Generated.TerminologyCapabilitiesExpansion do
  use TypedStruct

  typedstruct do
    field :_hierarchical, Fhir.Generated.Element
        field :_incomplete, Fhir.Generated.Element
        field :_paging, Fhir.Generated.Element
        field :_textFilter, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :hierarchical, :boolean
        field :id, :string
        field :incomplete, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :paging, :boolean
        field :parameter, [Fhir.Generated.TerminologyCapabilitiesParameter], default: []
        field :textFilter, :string
  end
end
