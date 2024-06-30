defmodule Fhir.OrganizationAffiliation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_active, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:active, :boolean)
    field(:code, [Fhir.CodeableConcept], default: [])
    field(:contact, [Fhir.ExtendedContactDetail], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:endpoint, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:healthcareService, [Fhir.Reference], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:location, [Fhir.Reference], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:network, [Fhir.Reference], default: [])
    field(:organization, Fhir.Reference)
    field(:participatingOrganization, Fhir.Reference)
    field(:period, Fhir.Period)
    field(:resourceType, :string, default: "OrganizationAffiliation")
    field(:specialty, [Fhir.CodeableConcept], default: [])
    field(:text, Fhir.Narrative)
  end
end
