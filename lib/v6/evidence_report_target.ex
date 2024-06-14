defmodule Fhir.v6().EvidenceReportTarget do
  use TypedStruct

  typedstruct do
    field(:_display, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resource, Fhir.v6().Reference)
    field(:url, :string)
  end
end
