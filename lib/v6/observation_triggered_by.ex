defmodule Fhir.v6().ObservationTriggeredBy do
  use TypedStruct

  typedstruct do
    field(:_reason, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:observation, Fhir.v6().Reference)
    field(:reason, :string)
    field(:type, :string)
  end
end
