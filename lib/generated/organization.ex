defmodule Fhir.Generated.Organization do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_alias, [Fhir.Generated.Element], default: []
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :active, :boolean
        field :alias, [:string], default: []
        field :contact, [Fhir.Generated.ExtendedContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :partOf, Fhir.Generated.Reference
        field :qualification, [Fhir.Generated.OrganizationQualification], default: []
        field :resourceType, :string, default: "Organization"
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
