defmodule Fhir.v6().QuestionnaireResponse do
  use TypedStruct

  typedstruct do
    field(:_authored, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:author, Fhir.v6().Reference)
    field(:authored, :datetime)
    field(:basedOn, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:encounter, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:item, [Fhir.v6().QuestionnaireResponseItem], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:partOf, [Fhir.v6().Reference], default: [])
    field(:questionnaire, :string)
    field(:resourceType, :string, default: "QuestionnaireResponse")
    field(:source, Fhir.v6().Reference)
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
  end
end
