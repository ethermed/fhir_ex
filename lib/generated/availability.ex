defmodule Fhir.Generated.Availability do
  use TypedStruct

  typedstruct do
    field :availableTime, [Fhir.Generated.AvailabilityAvailableTime], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :notAvailableTime, [Fhir.Generated.AvailabilityNotAvailableTime], default: []
  end
end
