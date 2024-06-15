defmodule Fhir.ExtendedContactDetail do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :address, Fhir.Address
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :name, [Fhir.HumanName], default: []
        field :organization, Fhir.Reference
        field :period, Fhir.Period
        field :purpose, Fhir.CodeableConcept
        field :telecom, [Fhir.ContactPoint], default: []
  end
end
