defmodule Fhir.Generated.CareTeam do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingOrganization, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :note, [Fhir.Generated.Annotation], default: []
        field :participant, [Fhir.Generated.CareTeamParticipant], default: []
        field :period, Fhir.Generated.Period
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :resourceType, :string, default: "CareTeam"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :telecom, [Fhir.Generated.ContactPoint], default: []
        field :text, Fhir.Generated.Narrative
  end
end
