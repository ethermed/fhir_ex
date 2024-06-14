defmodule Fhir.v6().AccountCoverage do
  use TypedStruct

  typedstruct do
    field(:_priority, Fhir.v6().Element)
    field(:coverage, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:priority, :float)
  end
end
