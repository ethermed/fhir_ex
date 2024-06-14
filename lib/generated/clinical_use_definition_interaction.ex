defmodule Fhir.ClinicalUseDefinitionInteraction do
  use TypedStruct

  typedstruct do
    field(:effect, Fhir.CodeableReference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:incidence, Fhir.CodeableConcept)
    field(:interactant, [Fhir.ClinicalUseDefinitionInteractant], default: [])
    field(:management, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
