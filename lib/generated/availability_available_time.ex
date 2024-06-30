defmodule Fhir.AvailabilityAvailableTime do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_allDay, Fhir.Element)
    field(:_availableEndTime, Fhir.Element)
    field(:_availableStartTime, Fhir.Element)
    field(:_daysOfWeek, [Fhir.Element], default: [])
    field(:allDay, :boolean)
    field(:availableEndTime, :string)
    field(:availableStartTime, :string)
    field(:daysOfWeek, [:string], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
