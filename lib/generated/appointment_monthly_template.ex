defmodule Fhir.AppointmentMonthlyTemplate do
  use TypedStruct

  typedstruct do
    field(:_dayOfMonth, Fhir.Element)
    field(:_monthInterval, Fhir.Element)
    field(:dayOfMonth, :float)
    field(:dayOfWeek, Fhir.Coding)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:monthInterval, :float)
    field(:nthWeekOfMonth, Fhir.Coding)
  end
end
