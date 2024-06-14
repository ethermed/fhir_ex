defmodule Fhir.v6().AvailabilityAvailableTime do
  use TypedStruct

  typedstruct do
    field(:_allDay, Fhir.v6().Element)
    field(:_availableEndTime, Fhir.v6().Element)
    field(:_availableStartTime, Fhir.v6().Element)
    field(:_daysOfWeek, [Fhir.v6().Element], default: [])
    field(:allDay, :boolean)
    field(:availableEndTime, :string)
    field(:availableStartTime, :string)
    field(:daysOfWeek, [:string], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
