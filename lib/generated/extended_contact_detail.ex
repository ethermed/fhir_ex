defmodule Fhir.Generated.ExtendedContactDetail do
  use TypedStruct

  typedstruct do
    field :address, Fhir.Generated.Address
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :name, [Fhir.Generated.HumanName], default: []
        field :organization, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
        field :purpose, Fhir.Generated.CodeableConcept
        field :telecom, [Fhir.Generated.ContactPoint], default: []
  end
end
