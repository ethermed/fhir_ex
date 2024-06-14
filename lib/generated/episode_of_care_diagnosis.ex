defmodule Fhir.EpisodeOfCareDiagnosis do
  use TypedStruct

  typedstruct do
    field(:condition, [Fhir.CodeableReference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:use, Fhir.CodeableConcept)
  end
end
