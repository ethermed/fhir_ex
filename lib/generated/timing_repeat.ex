defmodule Fhir.Generated.TimingRepeat do
  use TypedStruct

  typedstruct do
    field :_count, Fhir.Generated.Element
        field :_countMax, Fhir.Generated.Element
        field :_dayOfWeek, [Fhir.Generated.Element], default: []
        field :_duration, Fhir.Generated.Element
        field :_durationMax, Fhir.Generated.Element
        field :_durationUnit, Fhir.Generated.Element
        field :_frequency, Fhir.Generated.Element
        field :_frequencyMax, Fhir.Generated.Element
        field :_offset, Fhir.Generated.Element
        field :_period, Fhir.Generated.Element
        field :_periodMax, Fhir.Generated.Element
        field :_periodUnit, Fhir.Generated.Element
        field :_timeOfDay, [Fhir.Generated.Element], default: []
        field :_when, [Fhir.Generated.Element], default: []
        field :boundsDuration, Fhir.Generated.Duration
        field :boundsPeriod, Fhir.Generated.Period
        field :boundsRange, Fhir.Generated.Range
        field :count, :float
        field :countMax, :float
        field :dayOfWeek, [:string], default: []
        field :duration, :decimal
        field :durationMax, :decimal
        field :durationUnit, any()
        field :extension, [Fhir.Generated.Extension], default: []
        field :frequency, :float
        field :frequencyMax, :float
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :offset, :float
        field :period, :decimal
        field :periodMax, :decimal
        field :periodUnit, any()
        field :timeOfDay, [:string], default: []
        field :when, any()
  end
end
