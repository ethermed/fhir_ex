defmodule Fhir.v6().SubstancePolymerDegreeOfPolymerisation do
  use TypedStruct

  typedstruct do
    field(:_average, Fhir.v6().Element)
    field(:_high, Fhir.v6().Element)
    field(:_low, Fhir.v6().Element)
    field(:average, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:high, :float)
    field(:id, :string)
    field(:low, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
