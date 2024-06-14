defmodule Fhir.v6().HealthcareServiceEligibility do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:comment, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
