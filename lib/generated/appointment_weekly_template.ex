defmodule Fhir.AppointmentWeeklyTemplate do
  use TypedStruct

  typedstruct do
    field(:_friday, Fhir.Element)
    field(:_monday, Fhir.Element)
    field(:_saturday, Fhir.Element)
    field(:_sunday, Fhir.Element)
    field(:_thursday, Fhir.Element)
    field(:_tuesday, Fhir.Element)
    field(:_wednesday, Fhir.Element)
    field(:_weekInterval, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:friday, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:monday, :boolean)
    field(:saturday, :boolean)
    field(:sunday, :boolean)
    field(:thursday, :boolean)
    field(:tuesday, :boolean)
    field(:wednesday, :boolean)
    field(:weekInterval, :float)
  end
end
