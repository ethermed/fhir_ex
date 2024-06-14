defmodule Fhir.v6().CitationEntry do
  use TypedStruct

  typedstruct do
    field(:_correspondingContact, Fhir.v6().Element)
    field(:_forenameInitials, Fhir.v6().Element)
    field(:_rankingOrder, Fhir.v6().Element)
    field(:affiliation, [Fhir.v6().Reference], default: [])
    field(:contributionInstance, [Fhir.v6().CitationContributionInstance], default: [])
    field(:contributionType, [Fhir.v6().CodeableConcept], default: [])
    field(:contributor, Fhir.v6().Reference)
    field(:correspondingContact, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:forenameInitials, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:rankingOrder, :float)
    field(:role, Fhir.v6().CodeableConcept)
  end
end
