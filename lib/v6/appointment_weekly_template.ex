defmodule Fhir.v6().AppointmentWeeklyTemplate do
  use TypedStruct

  typedstruct do
    field(:_friday, Fhir.v6().Element)
    field(:_monday, Fhir.v6().Element)
    field(:_saturday, Fhir.v6().Element)
    field(:_sunday, Fhir.v6().Element)
    field(:_thursday, Fhir.v6().Element)
    field(:_tuesday, Fhir.v6().Element)
    field(:_wednesday, Fhir.v6().Element)
    field(:_weekInterval, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:friday, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:monday, :boolean)
    field(:saturday, :boolean)
    field(:sunday, :boolean)
    field(:thursday, :boolean)
    field(:tuesday, :boolean)
    field(:wednesday, :boolean)
    field(:weekInterval, :float)
  end
end
