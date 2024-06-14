defmodule Fhir.v6().DeviceDefinitionLink do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relatedDevice, Fhir.v6().CodeableReference)
    field(:relation, Fhir.v6().Coding)
  end
end
