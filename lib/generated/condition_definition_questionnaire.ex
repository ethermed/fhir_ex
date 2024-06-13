defmodule Fhir.Generated.ConditionDefinitionQuestionnaire do
  use TypedStruct

  typedstruct do
    field :_purpose, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :purpose, :string
        field :reference, Fhir.Generated.Reference
  end
end
