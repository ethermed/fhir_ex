defmodule Fhir.Generated.PermissionRule do
  use TypedStruct

  typedstruct do
    field :_type, Fhir.Generated.Element
        field :activity, [Fhir.Generated.PermissionActivity], default: []
        field :data, [Fhir.Generated.PermissionData], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :limit, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
  end
end
