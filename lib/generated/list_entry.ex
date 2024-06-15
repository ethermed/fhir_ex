defmodule Fhir.ListEntry do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :_deleted, Fhir.Element
        field :date, :datetime
        field :deleted, :boolean
        field :extension, [Fhir.Extension], default: []
        field :flag, Fhir.CodeableConcept
        field :id, :string
        field :item, Fhir.Reference
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
