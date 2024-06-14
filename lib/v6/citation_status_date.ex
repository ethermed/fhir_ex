defmodule Fhir.v6().CitationStatusDate do
  use TypedStruct

  typedstruct do
    field(:_actual, Fhir.v6().Element)
    field(:activity, Fhir.v6().CodeableConcept)
    field(:actual, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
  end
end
