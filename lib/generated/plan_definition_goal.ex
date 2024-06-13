defmodule Fhir.Generated.PlanDefinitionGoal do
  use TypedStruct

  typedstruct do
    field :addresses, [Fhir.Generated.CodeableConcept], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :description, Fhir.Generated.CodeableConcept
        field :documentation, [Fhir.Generated.RelatedArtifact], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :priority, Fhir.Generated.CodeableConcept
        field :start, Fhir.Generated.CodeableConcept
        field :target, [Fhir.Generated.PlanDefinitionTarget], default: []
  end
end
