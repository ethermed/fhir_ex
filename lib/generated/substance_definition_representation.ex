defmodule Fhir.Generated.SubstanceDefinitionRepresentation do
  use TypedStruct

  typedstruct do
    field :_representation, Fhir.Generated.Element
        field :document, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :format, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :representation, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
