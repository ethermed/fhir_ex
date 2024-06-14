defmodule Fhir.ExplanationOfBenefitBodySite do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:site, [Fhir.CodeableReference], default: [])
    field(:subSite, [Fhir.CodeableConcept], default: [])
  end
end
