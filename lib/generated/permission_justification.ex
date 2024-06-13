defmodule Fhir.Generated.PermissionJustification do
  use TypedStruct

  typedstruct do
    field :basis, [Fhir.Generated.CodeableConcept], default: []
        field :evidence, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
