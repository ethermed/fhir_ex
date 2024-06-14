defmodule Fhir.DataRequirementSort do
  use TypedStruct

  typedstruct do
    field(:_direction, Fhir.Element)
    field(:_path, Fhir.Element)
    field(:direction, any())
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
  end
end
