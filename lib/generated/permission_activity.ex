defmodule Fhir.Generated.PermissionActivity do
  use TypedStruct

  typedstruct do
    field :action, [Fhir.Generated.CodeableConcept], default: []
        field :actor, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :purpose, [Fhir.Generated.CodeableConcept], default: []
  end
end
