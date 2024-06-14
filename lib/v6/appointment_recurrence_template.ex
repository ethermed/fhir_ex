defmodule Fhir.v6().AppointmentRecurrenceTemplate do
  use TypedStruct

  typedstruct do
    field(:_excludingDate, [Fhir.v6().Element], default: [])
    field(:_excludingRecurrenceId, [Fhir.v6().Element], default: [])
    field(:_lastOccurrenceDate, Fhir.v6().Element)
    field(:_occurrenceCount, Fhir.v6().Element)
    field(:_occurrenceDate, [Fhir.v6().Element], default: [])
    field(:excludingDate, [:date], default: [])
    field(:excludingRecurrenceId, [:float], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:lastOccurrenceDate, :date)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:monthlyTemplate, Fhir.v6().AppointmentMonthlyTemplate)
    field(:occurrenceCount, :float)
    field(:occurrenceDate, [:date], default: [])
    field(:recurrenceType, Fhir.v6().CodeableConcept)
    field(:timezone, Fhir.v6().CodeableConcept)
    field(:weeklyTemplate, Fhir.v6().AppointmentWeeklyTemplate)
    field(:yearlyTemplate, Fhir.v6().AppointmentYearlyTemplate)
  end
end
