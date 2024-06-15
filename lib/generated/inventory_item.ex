defmodule Fhir.InventoryItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :association, [Fhir.InventoryItemAssociation], default: []
        field :baseUnit, Fhir.CodeableConcept
        field :category, [Fhir.CodeableConcept], default: []
        field :characteristic, [Fhir.InventoryItemCharacteristic], default: []
        field :code, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :description, Fhir.InventoryItemDescription
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instance, Fhir.InventoryItemInstance
        field :inventoryStatus, [Fhir.CodeableConcept], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, [Fhir.InventoryItemName], default: []
        field :netContent, Fhir.Quantity
        field :productReference, Fhir.Reference
        field :resourceType, :string, default: "InventoryItem"
        field :responsibleOrganization, [Fhir.InventoryItemResponsibleOrganization], default: []
        field :status, :string
        field :text, Fhir.Narrative
  end
end
