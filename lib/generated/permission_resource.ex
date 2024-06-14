defmodule Fhir.PermissionResource do
  use TypedStruct

  typedstruct do
    field(:_meaning, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:meaning, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reference, Fhir.Reference)
  end
end