defmodule Fhir.Availability do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:availableTime, [Fhir.AvailabilityAvailableTime], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:notAvailableTime, [Fhir.AvailabilityNotAvailableTime], default: [])
  end
end
