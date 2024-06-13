defmodule Fhir.Generated.InventoryItemResponsibleOrganization do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organization, Fhir.Generated.Reference
        field :role, Fhir.Generated.CodeableConcept
  end
end
