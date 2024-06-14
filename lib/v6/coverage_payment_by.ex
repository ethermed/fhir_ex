defmodule Fhir.v6().CoveragePaymentBy do
  use TypedStruct

  typedstruct do
    field(:_responsibility, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:party, Fhir.v6().Reference)
    field(:responsibility, :string)
  end
end
