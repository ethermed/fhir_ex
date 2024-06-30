defmodule Fhir.PlanDefinitionGoal do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:addresses, [Fhir.CodeableConcept], default: [])
    field(:category, Fhir.CodeableConcept)
    field(:description, Fhir.CodeableConcept)
    field(:documentation, [Fhir.RelatedArtifact], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:priority, Fhir.CodeableConcept)
    field(:start, Fhir.CodeableConcept)
    field(:target, [Fhir.PlanDefinitionTarget], default: [])
  end
end
