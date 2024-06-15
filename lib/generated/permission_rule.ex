defmodule Fhir.PermissionRule do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_type, Fhir.Element
        field :activity, [Fhir.PermissionActivity], default: []
        field :data, [Fhir.PermissionData], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :limit, [Fhir.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, :string
  end
end
