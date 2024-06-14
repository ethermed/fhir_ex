defmodule Fhir.v6().AvailabilityNotAvailableTime do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:description, :string)
    field(:during, Fhir.v6().Period)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
