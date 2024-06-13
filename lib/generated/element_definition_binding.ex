defmodule Fhir.Generated.ElementDefinitionBinding do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_strength, Fhir.Generated.Element
        field :additional, [Fhir.Generated.ElementDefinitionAdditional], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :strength, any()
        field :valueSet, :string
  end
end
