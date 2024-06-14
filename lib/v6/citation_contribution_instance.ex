defmodule Fhir.v6().CitationContributionInstance do
  use TypedStruct

  typedstruct do
    field(:_time, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:time, :datetime)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
