defmodule Fhir.MeasureTerm do
  use TypedStruct

  typedstruct do
    field(:_definition, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:definition, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end