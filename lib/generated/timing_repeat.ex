defmodule Fhir.TimingRepeat do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_count, Fhir.Element
        field :_countMax, Fhir.Element
        field :_dayOfWeek, [Fhir.Element], default: []
        field :_duration, Fhir.Element
        field :_durationMax, Fhir.Element
        field :_durationUnit, Fhir.Element
        field :_frequency, Fhir.Element
        field :_frequencyMax, Fhir.Element
        field :_offset, Fhir.Element
        field :_period, Fhir.Element
        field :_periodMax, Fhir.Element
        field :_periodUnit, Fhir.Element
        field :_timeOfDay, [Fhir.Element], default: []
        field :_when, [Fhir.Element], default: []
        field :boundsDuration, Fhir.Duration
        field :boundsPeriod, Fhir.Period
        field :boundsRange, Fhir.Range
        field :count, :float
        field :countMax, :float
        field :dayOfWeek, [:string], default: []
        field :duration, :decimal
        field :durationMax, :decimal
        field :durationUnit, any()
        field :extension, [Fhir.Extension], default: []
        field :frequency, :float
        field :frequencyMax, :float
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :offset, :float
        field :period, :decimal
        field :periodMax, :decimal
        field :periodUnit, any()
        field :timeOfDay, [:string], default: []
        field :when, any()
  end
end
