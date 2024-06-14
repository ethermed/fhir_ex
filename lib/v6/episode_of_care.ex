defmodule Fhir.v6().EpisodeOfCare do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:account, [Fhir.v6().Reference], default: [])
    field(:careManager, Fhir.v6().Reference)
    field(:careTeam, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:diagnosis, [Fhir.v6().EpisodeOfCareDiagnosis], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingOrganization, Fhir.v6().Reference)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:patient, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
    field(:reason, [Fhir.v6().EpisodeOfCareReason], default: [])
    field(:referralRequest, [Fhir.v6().Reference], default: [])
    field(:resourceType, :string, default: "EpisodeOfCare")
    field(:status, :string)
    field(:statusHistory, [Fhir.v6().EpisodeOfCareStatusHistory], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
