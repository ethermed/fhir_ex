defmodule Fhir.PatientContact do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_gender, Fhir.Element
        field :address, Fhir.Address
        field :extension, [Fhir.Extension], default: []
        field :gender, :string
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, Fhir.HumanName
        field :organization, Fhir.Reference
        field :period, Fhir.Period
        field :relationship, [Fhir.CodeableConcept], default: []
        field :telecom, [Fhir.ContactPoint], default: []
  end
end
