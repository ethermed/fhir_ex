defmodule Fhir.v6().ElementDefinitionDiscriminator do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, :string)
    field(:type, any())
  end
end
