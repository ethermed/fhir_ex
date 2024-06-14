defmodule Fhir.v6().CitationSummary1 do
  use TypedStruct

  typedstruct do
    field(:_value, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, Fhir.v6().CodeableConcept)
    field(:style, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
    field(:value, :string)
  end
end
