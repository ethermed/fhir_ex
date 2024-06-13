defmodule Fhir.Generated.ClinicalUseDefinitionWarning do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
