defmodule Fhir.Generated.LocationPosition do
  use TypedStruct

  typedstruct do
    field :_altitude, Fhir.Generated.Element
        field :_latitude, Fhir.Generated.Element
        field :_longitude, Fhir.Generated.Element
        field :altitude, :decimal
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :latitude, :decimal
        field :longitude, :decimal
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
