defmodule Fhir.Basic do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:author, Fhir.Reference)
    field(:code, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:created, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resourceType, :string, default: "Basic")
    field(:subject, Fhir.Reference)
    field(:text, Fhir.Narrative)
  end
end
