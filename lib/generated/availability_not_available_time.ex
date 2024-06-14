defmodule Fhir.AvailabilityNotAvailableTime do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:description, :string)
    field(:during, Fhir.Period)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
