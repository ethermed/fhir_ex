defmodule Fhir.v6().Availability do
  use TypedStruct

  typedstruct do
    field(:availableTime, [Fhir.v6().AvailabilityAvailableTime], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:notAvailableTime, [Fhir.v6().AvailabilityNotAvailableTime], default: [])
  end
end
