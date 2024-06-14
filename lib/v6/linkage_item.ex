defmodule Fhir.v6().LinkageItem do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resource, Fhir.v6().Reference)
    field(:type, :string)
  end
end
