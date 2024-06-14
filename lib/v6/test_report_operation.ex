defmodule Fhir.v6().TestReportOperation do
  use TypedStruct

  typedstruct do
    field(:_detail, Fhir.v6().Element)
    field(:_message, Fhir.v6().Element)
    field(:_result, Fhir.v6().Element)
    field(:detail, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:message, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:result, :string)
  end
end
