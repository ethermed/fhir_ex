defmodule Fhir.TestReportAction do
  use TypedStruct

  typedstruct do
    field(:assert, Fhir.TestReportAssert)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operation, Fhir.TestReportOperation)
  end
end
