defmodule Fhir.Generated.MarketingStatus do
  use TypedStruct

  typedstruct do
    field :_restoreDate, Fhir.Generated.Element
        field :country, Fhir.Generated.CodeableConcept
        field :dateRange, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :jurisdiction, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :restoreDate, :datetime
        field :status, Fhir.Generated.CodeableConcept
  end
end
