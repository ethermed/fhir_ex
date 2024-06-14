defmodule Fhir.ElementDefinitionBase do
  use TypedStruct

  typedstruct do
    field(:_max, Fhir.Element)
    field(:_min, Fhir.Element)
    field(:_path, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
  end
end
