defmodule Fhir.v6().BiologicallyDerivedProductCollection do
  use TypedStruct

  typedstruct do
    field(:_collectedDateTime, Fhir.v6().Element)
    field(:collectedDateTime, :string)
    field(:collectedPeriod, Fhir.v6().Period)
    field(:collector, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, Fhir.v6().Reference)
  end
end
