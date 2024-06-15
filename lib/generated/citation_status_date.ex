defmodule Fhir.CitationStatusDate do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_actual, Fhir.Element
        field :activity, Fhir.CodeableConcept
        field :actual, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :period, Fhir.Period
  end
end
