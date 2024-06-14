defmodule Fhir.AccountCoverage do
  use TypedStruct

  typedstruct do
    field(:_priority, Fhir.Element)
    field(:coverage, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:priority, :float)
  end
end
