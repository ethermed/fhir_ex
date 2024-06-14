defmodule Fhir.v6().DataRequirementSort do
  use TypedStruct

  typedstruct do
    field(:_direction, Fhir.v6().Element)
    field(:_path, Fhir.v6().Element)
    field(:direction, any())
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, :string)
  end
end
