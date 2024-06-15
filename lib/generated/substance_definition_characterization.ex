defmodule Fhir.SubstanceDefinitionCharacterization do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :file, [Fhir.Attachment], default: []
        field :form, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :technique, Fhir.CodeableConcept
  end
end
