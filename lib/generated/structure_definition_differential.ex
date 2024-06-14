defmodule Fhir.StructureDefinitionDifferential do
  use TypedStruct

  typedstruct do
    field(:element, [Fhir.ElementDefinition], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
