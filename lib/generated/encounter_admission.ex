defmodule Fhir.Generated.EncounterAdmission do
  use TypedStruct

  typedstruct do
    field :admitSource, Fhir.Generated.CodeableConcept
        field :destination, Fhir.Generated.Reference
        field :dischargeDisposition, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :origin, Fhir.Generated.Reference
        field :preAdmissionIdentifier, Fhir.Generated.Identifier
        field :reAdmission, Fhir.Generated.CodeableConcept
  end
end
