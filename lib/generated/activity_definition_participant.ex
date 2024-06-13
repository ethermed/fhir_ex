defmodule Fhir.Generated.ActivityDefinitionParticipant do
  use TypedStruct

  typedstruct do
    field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :role, Fhir.Generated.CodeableConcept
        field :type, :string
        field :typeCanonical, :string
        field :typeReference, Fhir.Generated.Reference
  end
end
