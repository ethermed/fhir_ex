defmodule Fhir.Generated.EncounterHistoryLocation do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :form, Fhir.Generated.CodeableConcept
        field :id, :string
        field :location, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
