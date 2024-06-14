defmodule Fhir.v6().TestReportAction2 do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operation, Fhir.v6().TestReportOperation)
  end
end
