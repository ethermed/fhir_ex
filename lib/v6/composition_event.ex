defmodule Fhir.v6().CompositionEvent do
  use TypedStruct

  typedstruct do
    field(:detail, [Fhir.v6().CodeableReference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
  end
end
