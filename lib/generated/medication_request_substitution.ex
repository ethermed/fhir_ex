defmodule Fhir.Generated.MedicationRequestSubstitution do
  use TypedStruct

  typedstruct do
    field :_allowedBoolean, Fhir.Generated.Element
        field :allowedBoolean, :boolean
        field :allowedCodeableConcept, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, Fhir.Generated.CodeableConcept
  end
end
