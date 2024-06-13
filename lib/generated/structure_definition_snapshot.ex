defmodule Fhir.Generated.StructureDefinitionSnapshot do
  use TypedStruct

  typedstruct do
    field :element, [Fhir.Generated.ElementDefinition], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
