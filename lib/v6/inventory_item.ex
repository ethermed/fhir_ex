defmodule Fhir.v6().InventoryItem do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:association, [Fhir.v6().InventoryItemAssociation], default: [])
    field(:baseUnit, Fhir.v6().CodeableConcept)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:characteristic, [Fhir.v6().InventoryItemCharacteristic], default: [])
    field(:code, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, Fhir.v6().InventoryItemDescription)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:instance, Fhir.v6().InventoryItemInstance)
    field(:inventoryStatus, [Fhir.v6().CodeableConcept], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, [Fhir.v6().InventoryItemName], default: [])
    field(:netContent, Fhir.v6().Quantity)
    field(:productReference, Fhir.v6().Reference)
    field(:resourceType, :string, default: "InventoryItem")
    field(:responsibleOrganization, [Fhir.v6().InventoryItemResponsibleOrganization], default: [])
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
