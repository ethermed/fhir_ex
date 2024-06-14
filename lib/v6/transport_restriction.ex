defmodule Fhir.v6().TransportRestriction do
  use TypedStruct

  typedstruct do
    field(:_repetitions, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:recipient, [Fhir.v6().Reference], default: [])
    field(:repetitions, :float)
  end
end
