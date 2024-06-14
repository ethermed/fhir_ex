defmodule Fhir.v6().PermissionData do
  use TypedStruct

  typedstruct do
    field(:expression, Fhir.v6().Expression)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, [Fhir.v6().Period], default: [])
    field(:resource, [Fhir.v6().PermissionResource], default: [])
    field(:security, [Fhir.v6().Coding], default: [])
  end
end
