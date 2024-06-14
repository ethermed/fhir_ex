defmodule Fhir.v6().Schedule do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_comment, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:active, :boolean)
    field(:actor, [Fhir.v6().Reference], default: [])
    field(:comment, :string)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:planningHorizon, Fhir.v6().Period)
    field(:resourceType, :string, default: "Schedule")
    field(:serviceCategory, [Fhir.v6().CodeableConcept], default: [])
    field(:serviceType, [Fhir.v6().CodeableReference], default: [])
    field(:specialty, [Fhir.v6().CodeableConcept], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
