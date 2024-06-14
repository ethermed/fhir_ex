defmodule Fhir.v6().EnrollmentRequest do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:candidate, Fhir.v6().Reference)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:coverage, Fhir.v6().Reference)
    field(:created, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:insurer, Fhir.v6().Reference)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:provider, Fhir.v6().Reference)
    field(:resourceType, :string, default: "EnrollmentRequest")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
