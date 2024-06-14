defmodule Fhir.v6().EnrollmentResponse do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_disposition, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_outcome, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:created, :datetime)
    field(:disposition, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organization, Fhir.v6().Reference)
    field(:outcome, :string)
    field(:request, Fhir.v6().Reference)
    field(:requestProvider, Fhir.v6().Reference)
    field(:resourceType, :string, default: "EnrollmentResponse")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
