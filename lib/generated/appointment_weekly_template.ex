defmodule Fhir.Generated.AppointmentWeeklyTemplate do
  use TypedStruct

  typedstruct do
    field :_friday, Fhir.Generated.Element
        field :_monday, Fhir.Generated.Element
        field :_saturday, Fhir.Generated.Element
        field :_sunday, Fhir.Generated.Element
        field :_thursday, Fhir.Generated.Element
        field :_tuesday, Fhir.Generated.Element
        field :_wednesday, Fhir.Generated.Element
        field :_weekInterval, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :friday, :boolean
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :monday, :boolean
        field :saturday, :boolean
        field :sunday, :boolean
        field :thursday, :boolean
        field :tuesday, :boolean
        field :wednesday, :boolean
        field :weekInterval, :float
  end
end
