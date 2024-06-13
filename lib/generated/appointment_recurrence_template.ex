defmodule Fhir.Generated.AppointmentRecurrenceTemplate do
  use TypedStruct

  typedstruct do
    field :_excludingDate, [Fhir.Generated.Element], default: []
        field :_excludingRecurrenceId, [Fhir.Generated.Element], default: []
        field :_lastOccurrenceDate, Fhir.Generated.Element
        field :_occurrenceCount, Fhir.Generated.Element
        field :_occurrenceDate, [Fhir.Generated.Element], default: []
        field :excludingDate, [:date], default: []
        field :excludingRecurrenceId, [:float], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :lastOccurrenceDate, :date
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :monthlyTemplate, Fhir.Generated.AppointmentMonthlyTemplate
        field :occurrenceCount, :float
        field :occurrenceDate, [:date], default: []
        field :recurrenceType, Fhir.Generated.CodeableConcept
        field :timezone, Fhir.Generated.CodeableConcept
        field :weeklyTemplate, Fhir.Generated.AppointmentWeeklyTemplate
        field :yearlyTemplate, Fhir.Generated.AppointmentYearlyTemplate
  end
end
