defmodule Fhir.TestReportTeardown do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.TestReportAction2], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
