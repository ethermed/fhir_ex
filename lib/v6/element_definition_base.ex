defmodule Fhir.v6().ElementDefinitionBase do
  use TypedStruct

  typedstruct do
    field(:_max, Fhir.v6().Element)
    field(:_min, Fhir.v6().Element)
    field(:_path, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, :string)
  end
end
