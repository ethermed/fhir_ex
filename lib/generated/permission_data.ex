defmodule Fhir.PermissionData do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:expression, Fhir.Expression)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, [Fhir.Period], default: [])
    field(:resource, [Fhir.PermissionResource], default: [])
    field(:security, [Fhir.Coding], default: [])
  end
end
