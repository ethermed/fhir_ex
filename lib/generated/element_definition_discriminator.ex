defmodule Fhir.ElementDefinitionDiscriminator do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
    field(:type, any())
  end
end
