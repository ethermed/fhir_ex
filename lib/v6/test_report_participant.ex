defmodule Fhir.v6().TestReportParticipant do
  use TypedStruct

  typedstruct do
    field(:_display, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_uri, Fhir.v6().Element)
    field(:display, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
    field(:uri, :string)
  end
end
