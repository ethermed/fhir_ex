defmodule Fhir.Generated.AppointmentYearlyTemplate do
  use TypedStruct

  typedstruct do
    field :_yearInterval, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :yearInterval, :float
  end
end
