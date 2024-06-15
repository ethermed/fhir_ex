defmodule Fhir.CareTeam do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_status, Fhir.Element
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingOrganization, [Fhir.Reference], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :note, [Fhir.Annotation], default: []
        field :participant, [Fhir.CareTeamParticipant], default: []
        field :period, Fhir.Period
        field :reason, [Fhir.CodeableReference], default: []
        field :resourceType, :string, default: "CareTeam"
        field :status, :string
        field :subject, Fhir.Reference
        field :telecom, [Fhir.ContactPoint], default: []
        field :text, Fhir.Narrative
  end
end
