defmodule Fhir.v6().CoverageClass do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:type, Fhir.v6().CodeableConcept)
    field(:value, Fhir.v6().Identifier)
  end
end
