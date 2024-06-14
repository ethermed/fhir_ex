defmodule Fhir.Endpoint do
  use TypedStruct

  typedstruct do
    field(:_address, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_header, [Fhir.Element], default: [])
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:address, :string)
    field(:connectionType, [Fhir.CodeableConcept], default: [])
    field(:contact, [Fhir.ContactPoint], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:description, :string)
    field(:environmentType, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:header, [:string], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:managingOrganization, Fhir.Reference)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:payload, [Fhir.EndpointPayload], default: [])
    field(:period, Fhir.Period)
    field(:resourceType, :string, default: "Endpoint")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
