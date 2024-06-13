defmodule Fhir.Generated.SubstanceDefinitionSourceMaterial do
  use TypedStruct

  typedstruct do
    field :countryOfOrigin, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :genus, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :part, Fhir.Generated.CodeableConcept
        field :species, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
  end
end
