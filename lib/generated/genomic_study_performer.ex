defmodule Fhir.Generated.GenomicStudyPerformer do
  use TypedStruct

  typedstruct do
    field :actor, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :role, Fhir.Generated.CodeableConcept
  end
end
