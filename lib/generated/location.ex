defmodule Fhir.Location do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_alias, [Fhir.Element], default: []
        field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_mode, Fhir.Element
        field :_name, Fhir.Element
        field :_status, Fhir.Element
        field :address, Fhir.Address
        field :alias, [:string], default: []
        field :characteristic, [Fhir.CodeableConcept], default: []
        field :contact, [Fhir.ExtendedContactDetail], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :description, :string
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :form, Fhir.CodeableConcept
        field :hoursOfOperation, [Fhir.Availability], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingOrganization, Fhir.Reference
        field :meta, Fhir.Meta
        field :mode, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :operationalStatus, Fhir.Coding
        field :partOf, Fhir.Reference
        field :position, Fhir.LocationPosition
        field :resourceType, :string, default: "Location"
        field :status, :string
        field :text, Fhir.Narrative
        field :type, [Fhir.CodeableConcept], default: []
        field :virtualService, [Fhir.VirtualServiceDetail], default: []
  end
end
