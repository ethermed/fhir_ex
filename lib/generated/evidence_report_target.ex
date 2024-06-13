defmodule Fhir.Generated.EvidenceReportTarget do
  use TypedStruct

  typedstruct do
    field :_display, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, Fhir.Generated.Reference
        field :url, :string
  end
end
