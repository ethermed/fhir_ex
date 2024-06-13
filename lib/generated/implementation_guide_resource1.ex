defmodule Fhir.Generated.ImplementationGuideResource1 do
  use TypedStruct

  typedstruct do
    field :_isExample, Fhir.Generated.Element
        field :_relativePath, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :isExample, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :profile, [:string], default: []
        field :reference, Fhir.Generated.Reference
        field :relativePath, :string
  end
end
