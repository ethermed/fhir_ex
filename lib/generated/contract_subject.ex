defmodule Fhir.ContractSubject do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :reference, [Fhir.Reference], default: []
        field :role, Fhir.CodeableConcept
  end
end
