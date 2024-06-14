defmodule Fhir.v6().CitationPart do
  use TypedStruct

  typedstruct do
    field(:_value, Fhir.v6().Element)
    field(:baseCitation, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:value, :string)
  end
end
