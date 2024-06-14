defmodule Fhir.LocationPosition do
  use TypedStruct

  typedstruct do
    field(:_altitude, Fhir.Element)
    field(:_latitude, Fhir.Element)
    field(:_longitude, Fhir.Element)
    field(:altitude, :decimal)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:latitude, :decimal)
    field(:longitude, :decimal)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
