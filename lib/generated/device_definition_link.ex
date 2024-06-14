defmodule Fhir.DeviceDefinitionLink do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relatedDevice, Fhir.CodeableReference)
    field(:relation, Fhir.Coding)
  end
end
