defmodule Fhir.v6().ClinicalUseDefinitionInteraction do
  use TypedStruct

  typedstruct do
    field(:effect, Fhir.v6().CodeableReference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:incidence, Fhir.v6().CodeableConcept)
    field(:interactant, [Fhir.v6().ClinicalUseDefinitionInteractant], default: [])
    field(:management, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
