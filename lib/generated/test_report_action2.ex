defmodule Fhir.TestReportAction2 do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operation, Fhir.TestReportOperation)
  end
end
