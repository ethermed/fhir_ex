defmodule Fhir.AppointmentYearlyTemplate do
  use TypedStruct

  typedstruct do
    field(:_yearInterval, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:yearInterval, :float)
  end
end
