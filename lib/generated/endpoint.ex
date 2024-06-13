defmodule Fhir.Generated.Endpoint do
  use TypedStruct

  typedstruct do
    field :_address, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_header, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :address, :string
        field :connectionType, [Fhir.Generated.CodeableConcept], default: []
        field :contact, [Fhir.Generated.ContactPoint], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :environmentType, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :header, [:string], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingOrganization, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :payload, [Fhir.Generated.EndpointPayload], default: []
        field :period, Fhir.Generated.Period
        field :resourceType, :string, default: "Endpoint"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
