defmodule Fhir.v6().DiagnosticReportMedia do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:comment, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:link, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
