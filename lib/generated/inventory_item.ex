defmodule Fhir.Generated.InventoryItem do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :association, [Fhir.Generated.InventoryItemAssociation], default: []
        field :baseUnit, Fhir.Generated.CodeableConcept
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :characteristic, [Fhir.Generated.InventoryItemCharacteristic], default: []
        field :code, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, Fhir.Generated.InventoryItemDescription
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instance, Fhir.Generated.InventoryItemInstance
        field :inventoryStatus, [Fhir.Generated.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, [Fhir.Generated.InventoryItemName], default: []
        field :netContent, Fhir.Generated.Quantity
        field :productReference, Fhir.Generated.Reference
        field :resourceType, :string, default: "InventoryItem"
        field :responsibleOrganization, [Fhir.Generated.InventoryItemResponsibleOrganization], default: []
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
