defmodule Fhir.HealthcareServiceEligibility do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:comment, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
