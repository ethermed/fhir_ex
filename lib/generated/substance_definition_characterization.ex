defmodule Fhir.Generated.SubstanceDefinitionCharacterization do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :file, [Fhir.Generated.Attachment], default: []
        field :form, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :technique, Fhir.Generated.CodeableConcept
  end
end
