defmodule Fhir.v6().PermissionResource do
  use TypedStruct

  typedstruct do
    field(:_meaning, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:meaning, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reference, Fhir.v6().Reference)
  end
end
