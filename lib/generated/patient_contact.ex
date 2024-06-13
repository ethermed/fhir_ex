defmodule Fhir.Generated.PatientContact do
  use TypedStruct

  typedstruct do
    field :_gender, Fhir.Generated.Element
        field :address, Fhir.Generated.Address
        field :extension, [Fhir.Generated.Extension], default: []
        field :gender, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, Fhir.Generated.HumanName
        field :organization, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
        field :relationship, [Fhir.Generated.CodeableConcept], default: []
        field :telecom, [Fhir.Generated.ContactPoint], default: []
  end
end
