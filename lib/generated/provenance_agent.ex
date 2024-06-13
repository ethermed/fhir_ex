defmodule Fhir.Generated.ProvenanceAgent do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onBehalfOf, Fhir.Generated.Reference
        field :role, [Fhir.Generated.CodeableConcept], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :who, Fhir.Generated.Reference
  end
end
