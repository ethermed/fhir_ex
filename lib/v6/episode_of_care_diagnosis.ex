defmodule Fhir.v6().EpisodeOfCareDiagnosis do
  use TypedStruct

  typedstruct do
    field(:condition, [Fhir.v6().CodeableReference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:use, Fhir.v6().CodeableConcept)
  end
end
