defmodule Fhir.Generated.Person do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_birthDate, Fhir.Generated.Element
        field :_deceasedBoolean, Fhir.Generated.Element
        field :_deceasedDateTime, Fhir.Generated.Element
        field :_gender, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :active, :boolean
        field :address, [Fhir.Generated.Address], default: []
        field :birthDate, :date
        field :communication, [Fhir.Generated.PersonCommunication], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :deceasedBoolean, :boolean
        field :deceasedDateTime, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :gender, :string
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :link, [Fhir.Generated.PersonLink], default: []
        field :managingOrganization, Fhir.Generated.Reference
        field :maritalStatus, Fhir.Generated.CodeableConcept
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, [Fhir.Generated.HumanName], default: []
        field :photo, [Fhir.Generated.Attachment], default: []
        field :resourceType, :string, default: "Person"
        field :telecom, [Fhir.Generated.ContactPoint], default: []
        field :text, Fhir.Generated.Narrative
  end
end
