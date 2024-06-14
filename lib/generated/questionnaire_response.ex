defmodule Fhir.QuestionnaireResponse do
  use TypedStruct

  typedstruct do
    field(:_authored, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:author, Fhir.Reference)
    field(:authored, :datetime)
    field(:basedOn, [Fhir.Reference], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:encounter, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:item, [Fhir.QuestionnaireResponseItem], default: [])
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:partOf, [Fhir.Reference], default: [])
    field(:questionnaire, :string)
    field(:resourceType, :string, default: "QuestionnaireResponse")
    field(:source, Fhir.Reference)
    field(:status, :string)
    field(:subject, Fhir.Reference)
    field(:text, Fhir.Narrative)
  end
end
