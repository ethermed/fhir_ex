defmodule Fhir.Generated.PermissionData do
  use TypedStruct

  typedstruct do
    field :expression, Fhir.Generated.Expression
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, [Fhir.Generated.Period], default: []
        field :resource, [Fhir.Generated.PermissionResource], default: []
        field :security, [Fhir.Generated.Coding], default: []
  end
end
