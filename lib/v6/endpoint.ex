defmodule Fhir.v6().Endpoint do
  use TypedStruct

  typedstruct do
    field(:_address, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_header, [Fhir.v6().Element], default: [])
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:address, :string)
    field(:connectionType, [Fhir.v6().CodeableConcept], default: [])
    field(:contact, [Fhir.v6().ContactPoint], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:environmentType, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:header, [:string], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingOrganization, Fhir.v6().Reference)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:payload, [Fhir.v6().EndpointPayload], default: [])
    field(:period, Fhir.v6().Period)
    field(:resourceType, :string, default: "Endpoint")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
