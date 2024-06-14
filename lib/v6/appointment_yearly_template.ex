defmodule Fhir.v6().AppointmentYearlyTemplate do
  use TypedStruct

  typedstruct do
    field(:_yearInterval, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:yearInterval, :float)
  end
end
