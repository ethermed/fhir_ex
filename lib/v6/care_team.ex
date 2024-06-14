defmodule Fhir.v6().CareTeam do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingOrganization, [Fhir.v6().Reference], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:participant, [Fhir.v6().CareTeamParticipant], default: [])
    field(:period, Fhir.v6().Period)
    field(:reason, [Fhir.v6().CodeableReference], default: [])
    field(:resourceType, :string, default: "CareTeam")
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:telecom, [Fhir.v6().ContactPoint], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
