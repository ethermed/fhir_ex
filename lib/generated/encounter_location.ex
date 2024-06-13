defmodule Fhir.Generated.EncounterLocation do
  use TypedStruct

  typedstruct do
    field :_status, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :form, Fhir.Generated.CodeableConcept
        field :id, :string
        field :location, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :status, :string
  end
end
