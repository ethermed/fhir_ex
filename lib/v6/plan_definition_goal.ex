defmodule Fhir.v6().PlanDefinitionGoal do
  use TypedStruct

  typedstruct do
    field(:addresses, [Fhir.v6().CodeableConcept], default: [])
    field(:category, Fhir.v6().CodeableConcept)
    field(:description, Fhir.v6().CodeableConcept)
    field(:documentation, [Fhir.v6().RelatedArtifact], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:priority, Fhir.v6().CodeableConcept)
    field(:start, Fhir.v6().CodeableConcept)
    field(:target, [Fhir.v6().PlanDefinitionTarget], default: [])
  end
end
