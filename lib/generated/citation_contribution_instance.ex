defmodule Fhir.CitationContributionInstance do
  use TypedStruct

  typedstruct do
    field(:_time, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:time, :datetime)
    field(:type, Fhir.CodeableConcept)
  end
end
