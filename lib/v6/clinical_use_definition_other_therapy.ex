defmodule Fhir.v6().ClinicalUseDefinitionOtherTherapy do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relationshipType, Fhir.v6().CodeableConcept)
    field(:treatment, Fhir.v6().CodeableReference)
  end
end
