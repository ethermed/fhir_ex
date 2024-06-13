defmodule Fhir.Generated.SubstanceSourceMaterialAuthor do
  use TypedStruct

  typedstruct do
    field :_authorDescription, Fhir.Generated.Element
        field :authorDescription, :string
        field :authorType, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
