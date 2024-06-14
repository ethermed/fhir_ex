defmodule Fhir.TestReportOperation do
  use TypedStruct

  typedstruct do
    field(:_detail, Fhir.Element)
    field(:_message, Fhir.Element)
    field(:_result, Fhir.Element)
    field(:detail, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:message, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:result, :string)
  end
end
