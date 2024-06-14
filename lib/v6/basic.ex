defmodule Fhir.v6().Basic do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:author, Fhir.v6().Reference)
    field(:code, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:created, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:resourceType, :string, default: "Basic")
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
  end
end
