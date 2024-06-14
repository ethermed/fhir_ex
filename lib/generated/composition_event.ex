defmodule Fhir.CompositionEvent do
  use TypedStruct

  typedstruct do
    field(:detail, [Fhir.CodeableReference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
  end
end
