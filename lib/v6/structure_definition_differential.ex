defmodule Fhir.v6().StructureDefinitionDifferential do
  use TypedStruct

  typedstruct do
    field(:element, [Fhir.v6().ElementDefinition], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
