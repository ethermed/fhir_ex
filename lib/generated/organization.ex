defmodule Fhir.Organization do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_active, Fhir.Element
        field :_alias, [Fhir.Element], default: []
        field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :active, :boolean
        field :alias, [:string], default: []
        field :contact, [Fhir.ExtendedContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :description, :string
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :partOf, Fhir.Reference
        field :qualification, [Fhir.OrganizationQualification], default: []
        field :resourceType, :string, default: "Organization"
        field :text, Fhir.Narrative
        field :type, [Fhir.CodeableConcept], default: []
  end
end
