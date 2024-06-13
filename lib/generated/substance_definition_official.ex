defmodule Fhir.Generated.SubstanceDefinitionOfficial do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :authority, Fhir.Generated.CodeableConcept
        field :date, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :status, Fhir.Generated.CodeableConcept
  end
end
