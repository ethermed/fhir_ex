defmodule Fhir.v6().TimingRepeat do
  use TypedStruct

  typedstruct do
    field(:_count, Fhir.v6().Element)
    field(:_countMax, Fhir.v6().Element)
    field(:_dayOfWeek, [Fhir.v6().Element], default: [])
    field(:_duration, Fhir.v6().Element)
    field(:_durationMax, Fhir.v6().Element)
    field(:_durationUnit, Fhir.v6().Element)
    field(:_frequency, Fhir.v6().Element)
    field(:_frequencyMax, Fhir.v6().Element)
    field(:_offset, Fhir.v6().Element)
    field(:_period, Fhir.v6().Element)
    field(:_periodMax, Fhir.v6().Element)
    field(:_periodUnit, Fhir.v6().Element)
    field(:_timeOfDay, [Fhir.v6().Element], default: [])
    field(:_when, [Fhir.v6().Element], default: [])
    field(:boundsDuration, Fhir.v6().Duration)
    field(:boundsPeriod, Fhir.v6().Period)
    field(:boundsRange, Fhir.v6().Range)
    field(:count, :float)
    field(:countMax, :float)
    field(:dayOfWeek, [:string], default: [])
    field(:duration, :decimal)
    field(:durationMax, :decimal)
    field(:durationUnit, any())
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:frequency, :float)
    field(:frequencyMax, :float)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:offset, :float)
    field(:period, :decimal)
    field(:periodMax, :decimal)
    field(:periodUnit, any())
    field(:timeOfDay, [:string], default: [])
    field(:when, any())
  end
end