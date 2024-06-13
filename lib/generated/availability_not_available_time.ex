defmodule Fhir.Generated.AvailabilityNotAvailableTime do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :description, :string
        field :during, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
