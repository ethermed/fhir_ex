defmodule Fhir.v6().MeasureTerm do
  use TypedStruct

  typedstruct do
    field(:_definition, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:definition, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
