defmodule Fhir.EnrollmentRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_created, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:candidate, Fhir.Reference)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:coverage, Fhir.Reference)
    field(:created, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:insurer, Fhir.Reference)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:provider, Fhir.Reference)
    field(:resourceType, :string, default: "EnrollmentRequest")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
