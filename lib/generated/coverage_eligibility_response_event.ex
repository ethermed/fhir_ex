defmodule Fhir.CoverageEligibilityResponseEvent do
  use TypedStruct

  typedstruct do
    field(:_whenDateTime, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:whenDateTime, :string)
    field(:whenPeriod, Fhir.Period)
  end
end
