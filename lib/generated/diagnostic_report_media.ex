defmodule Fhir.DiagnosticReportMedia do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.Element)
    field(:comment, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:link, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
