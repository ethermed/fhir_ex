defmodule Fhir.TransportRestriction do
  use TypedStruct

  typedstruct do
    field(:_repetitions, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:recipient, [Fhir.Reference], default: [])
    field(:repetitions, :float)
  end
end
