defmodule Fhir.v6().OrganizationAffiliation do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:active, :boolean)
    field(:code, [Fhir.v6().CodeableConcept], default: [])
    field(:contact, [Fhir.v6().ExtendedContactDetail], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:endpoint, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:healthcareService, [Fhir.v6().Reference], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:location, [Fhir.v6().Reference], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:network, [Fhir.v6().Reference], default: [])
    field(:organization, Fhir.v6().Reference)
    field(:participatingOrganization, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
    field(:resourceType, :string, default: "OrganizationAffiliation")
    field(:specialty, [Fhir.v6().CodeableConcept], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
