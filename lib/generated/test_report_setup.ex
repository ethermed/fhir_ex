defmodule Fhir.TestReportSetup do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.TestReportAction], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
