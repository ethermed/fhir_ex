defmodule Fhir.v6().PaymentReconciliationProcessNote do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:text, :string)
    field(:type, :string)
  end
end
