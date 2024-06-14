defmodule Fhir.v6().CarePlan do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_instantiatesUri, [Fhir.v6().Element], default: [])
    field(:_intent, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:activity, [Fhir.v6().CarePlanActivity], default: [])
    field(:addresses, [Fhir.v6().CodeableReference], default: [])
    field(:basedOn, [Fhir.v6().Reference], default: [])
    field(:careTeam, [Fhir.v6().Reference], default: [])
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:contributor, [Fhir.v6().Reference], default: [])
    field(:created, :datetime)
    field(:custodian, Fhir.v6().Reference)
    field(:description, :string)
    field(:encounter, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:goal, [Fhir.v6().Reference], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:instantiatesCanonical, [:string], default: [])
    field(:instantiatesUri, [:string], default: [])
    field(:intent, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:partOf, [Fhir.v6().Reference], default: [])
    field(:period, Fhir.v6().Period)
    field(:replaces, [Fhir.v6().Reference], default: [])
    field(:resourceType, :string, default: "CarePlan")
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:supportingInfo, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:title, :string)
  end
end