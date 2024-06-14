defmodule Fhir.EvidenceReportTarget do
  use TypedStruct

  typedstruct do
    field(:_display, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:display, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resource, Fhir.Reference)
    field(:url, :string)
  end
end
