defmodule Fhir.v6().Organization do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_alias, [Fhir.v6().Element], default: [])
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:active, :boolean)
    field(:alias, [:string], default: [])
    field(:contact, [Fhir.v6().ExtendedContactDetail], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:endpoint, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:partOf, Fhir.v6().Reference)
    field(:qualification, [Fhir.v6().OrganizationQualification], default: [])
    field(:resourceType, :string, default: "Organization")
    field(:text, Fhir.v6().Narrative)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
