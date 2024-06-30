defmodule Fhir.InventoryItemResponsibleOrganization do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:organization, Fhir.Reference)
    field(:role, Fhir.CodeableConcept)
  end
end
