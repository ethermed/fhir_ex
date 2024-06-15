defmodule Fhir.EncounterHistoryLocation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :form, Fhir.CodeableConcept
        field :id, :string
        field :location, Fhir.Reference
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
