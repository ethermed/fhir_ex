defmodule Fhir.Generated.Location do
  use TypedStruct

  typedstruct do
    field :_alias, [Fhir.Generated.Element], default: []
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_mode, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :address, Fhir.Generated.Address
        field :alias, [:string], default: []
        field :characteristic, [Fhir.Generated.CodeableConcept], default: []
        field :contact, [Fhir.Generated.ExtendedContactDetail], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :form, Fhir.Generated.CodeableConcept
        field :hoursOfOperation, [Fhir.Generated.Availability], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingOrganization, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :operationalStatus, Fhir.Generated.Coding
        field :partOf, Fhir.Generated.Reference
        field :position, Fhir.Generated.LocationPosition
        field :resourceType, :string, default: "Location"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :virtualService, [Fhir.Generated.VirtualServiceDetail], default: []
  end
end
