defmodule Fhir.Generated.MedicationAdministrationPerformer do
  use TypedStruct

  typedstruct do
    field :actor, Fhir.Generated.CodeableReference
        field :extension, [Fhir.Generated.Extension], default: []
        field :function, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end