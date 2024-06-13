defmodule Fhir.Generated.Group do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_membership, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_quantity, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :active, :boolean
        field :characteristic, [Fhir.Generated.GroupCharacteristic], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :managingEntity, Fhir.Generated.Reference
        field :member, [Fhir.Generated.GroupMember], default: []
        field :membership, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :quantity, :float
        field :resourceType, :string, default: "Group"
        field :text, Fhir.Generated.Narrative
        field :type, :string
  end
end
