defmodule Fhir.v6().LocationPosition do
  use TypedStruct

  typedstruct do
    field(:_altitude, Fhir.v6().Element)
    field(:_latitude, Fhir.v6().Element)
    field(:_longitude, Fhir.v6().Element)
    field(:altitude, :decimal)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:latitude, :decimal)
    field(:longitude, :decimal)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
