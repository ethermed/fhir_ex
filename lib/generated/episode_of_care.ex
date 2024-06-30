defmodule Fhir.EpisodeOfCare do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:account, [Fhir.Reference], default: [])
    field(:careManager, Fhir.Reference)
    field(:careTeam, [Fhir.Reference], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:diagnosis, [Fhir.EpisodeOfCareDiagnosis], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingOrganization, Fhir.Reference)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:patient, Fhir.Reference)
    field(:period, Fhir.Period)
    field(:reason, [Fhir.EpisodeOfCareReason], default: [])
    field(:referralRequest, [Fhir.Reference], default: [])
    field(:resourceType, :string, default: "EpisodeOfCare")
    field(:status, :string)
    field(:statusHistory, [Fhir.EpisodeOfCareStatusHistory], default: [])
    field(:text, Fhir.Narrative)
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
