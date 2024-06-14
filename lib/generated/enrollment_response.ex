defmodule Fhir.EnrollmentResponse do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.Element)
    field(:_disposition, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_outcome, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:created, :datetime)
    field(:disposition, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:organization, Fhir.Reference)
    field(:outcome, :string)
    field(:request, Fhir.Reference)
    field(:requestProvider, Fhir.Reference)
    field(:resourceType, :string, default: "EnrollmentResponse")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
