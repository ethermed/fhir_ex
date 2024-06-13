defmodule Fhir.Generated.CitationContributionInstance do
  use TypedStruct

  typedstruct do
    field :_time, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :time, :datetime
        field :type, Fhir.Generated.CodeableConcept
  end
end
