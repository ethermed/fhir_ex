defmodule Fhir.InventoryItemResponsibleOrganization do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:organization, Fhir.Reference)
    field(:role, Fhir.CodeableConcept)
  end
end
