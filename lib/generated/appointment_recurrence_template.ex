defmodule Fhir.AppointmentRecurrenceTemplate do
  use TypedStruct

  typedstruct do
    field(:_excludingDate, [Fhir.Element], default: [])
    field(:_excludingRecurrenceId, [Fhir.Element], default: [])
    field(:_lastOccurrenceDate, Fhir.Element)
    field(:_occurrenceCount, Fhir.Element)
    field(:_occurrenceDate, [Fhir.Element], default: [])
    field(:excludingDate, [:date], default: [])
    field(:excludingRecurrenceId, [:float], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:lastOccurrenceDate, :date)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:monthlyTemplate, Fhir.AppointmentMonthlyTemplate)
    field(:occurrenceCount, :float)
    field(:occurrenceDate, [:date], default: [])
    field(:recurrenceType, Fhir.CodeableConcept)
    field(:timezone, Fhir.CodeableConcept)
    field(:weeklyTemplate, Fhir.AppointmentWeeklyTemplate)
    field(:yearlyTemplate, Fhir.AppointmentYearlyTemplate)
  end
end
