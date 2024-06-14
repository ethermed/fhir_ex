defmodule Fhir.v6().InventoryItemResponsibleOrganization do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organization, Fhir.v6().Reference)
    field(:role, Fhir.v6().CodeableConcept)
  end
end
