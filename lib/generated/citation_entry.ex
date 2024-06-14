defmodule Fhir.CitationEntry do
  use TypedStruct

  typedstruct do
    field(:_correspondingContact, Fhir.Element)
    field(:_forenameInitials, Fhir.Element)
    field(:_rankingOrder, Fhir.Element)
    field(:affiliation, [Fhir.Reference], default: [])
    field(:contributionInstance, [Fhir.CitationContributionInstance], default: [])
    field(:contributionType, [Fhir.CodeableConcept], default: [])
    field(:contributor, Fhir.Reference)
    field(:correspondingContact, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:forenameInitials, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:rankingOrder, :float)
    field(:role, Fhir.CodeableConcept)
  end
end
