defmodule Fhir.DeviceDefinitionLink do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relatedDevice, Fhir.CodeableReference)
    field(:relation, Fhir.Coding)
  end
end
