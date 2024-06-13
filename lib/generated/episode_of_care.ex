defmodule Fhir.Generated.EpisodeOfCare do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :account, [Fhir.Generated.Reference], default: []
        field :careManager, Fhir.Generated.Reference
        field :careTeam, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :diagnosis, [Fhir.Generated.EpisodeOfCareDiagnosis], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingOrganization, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patient, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
        field :reason, [Fhir.Generated.EpisodeOfCareReason], default: []
        field :referralRequest, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "EpisodeOfCare"
        field :status, :string
        field :statusHistory, [Fhir.Generated.EpisodeOfCareStatusHistory], default: []
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
