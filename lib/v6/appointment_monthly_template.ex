defmodule Fhir.v6().AppointmentMonthlyTemplate do
  use TypedStruct

  typedstruct do
    field(:_dayOfMonth, Fhir.v6().Element)
    field(:_monthInterval, Fhir.v6().Element)
    field(:dayOfMonth, :float)
    field(:dayOfWeek, Fhir.v6().Coding)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:monthInterval, :float)
    field(:nthWeekOfMonth, Fhir.v6().Coding)
  end
end
