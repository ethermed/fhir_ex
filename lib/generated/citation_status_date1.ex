defmodule Fhir.Generated.CitationStatusDate1 do
  use TypedStruct

  typedstruct do
    field :_actual, Fhir.Generated.Element
        field :activity, Fhir.Generated.CodeableConcept
        field :actual, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
  end
end
