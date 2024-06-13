defmodule Fhir.Generated.AppointmentMonthlyTemplate do
  use TypedStruct

  typedstruct do
    field :_dayOfMonth, Fhir.Generated.Element
        field :_monthInterval, Fhir.Generated.Element
        field :dayOfMonth, :float
        field :dayOfWeek, Fhir.Generated.Coding
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :monthInterval, :float
        field :nthWeekOfMonth, Fhir.Generated.Coding
  end
end
