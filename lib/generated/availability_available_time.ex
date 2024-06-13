defmodule Fhir.Generated.AvailabilityAvailableTime do
  use TypedStruct

  typedstruct do
    field :_allDay, Fhir.Generated.Element
        field :_availableEndTime, Fhir.Generated.Element
        field :_availableStartTime, Fhir.Generated.Element
        field :_daysOfWeek, [Fhir.Generated.Element], default: []
        field :allDay, :boolean
        field :availableEndTime, :string
        field :availableStartTime, :string
        field :daysOfWeek, [:string], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
