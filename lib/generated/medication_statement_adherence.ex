defmodule Fhir.Generated.MedicationStatementAdherence do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, Fhir.Generated.CodeableConcept
  end
end
