defmodule Fhir.CoveragePaymentBy do
  use TypedStruct

  typedstruct do
    field(:_responsibility, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:party, Fhir.Reference)
    field(:responsibility, :string)
  end
end
