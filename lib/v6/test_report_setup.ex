defmodule Fhir.v6().TestReportSetup do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.v6().TestReportAction], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
