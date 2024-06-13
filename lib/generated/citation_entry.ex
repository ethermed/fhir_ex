defmodule Fhir.Generated.CitationEntry do
  use TypedStruct

  typedstruct do
    field :_correspondingContact, Fhir.Generated.Element
        field :_forenameInitials, Fhir.Generated.Element
        field :_rankingOrder, Fhir.Generated.Element
        field :affiliation, [Fhir.Generated.Reference], default: []
        field :contributionInstance, [Fhir.Generated.CitationContributionInstance], default: []
        field :contributionType, [Fhir.Generated.CodeableConcept], default: []
        field :contributor, Fhir.Generated.Reference
        field :correspondingContact, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :forenameInitials, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :rankingOrder, :float
        field :role, Fhir.Generated.CodeableConcept
  end
end
