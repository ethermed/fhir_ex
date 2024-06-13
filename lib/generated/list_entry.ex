defmodule Fhir.Generated.ListEntry do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_deleted, Fhir.Generated.Element
        field :date, :datetime
        field :deleted, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :flag, Fhir.Generated.CodeableConcept
        field :id, :string
        field :item, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
