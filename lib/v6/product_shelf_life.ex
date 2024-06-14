defmodule Fhir.v6().ProductShelfLife do
  use TypedStruct

  typedstruct do
    field(:_periodString, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:periodDuration, Fhir.v6().Duration)
    field(:periodString, :string)
    field(:specialPrecautionsForStorage, [Fhir.v6().CodeableConcept], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
