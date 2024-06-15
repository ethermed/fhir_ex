defmodule Fhir.Patient do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_active, Fhir.Element
        field :_birthDate, Fhir.Element
        field :_deceasedBoolean, Fhir.Element
        field :_deceasedDateTime, Fhir.Element
        field :_gender, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_multipleBirthBoolean, Fhir.Element
        field :_multipleBirthInteger, Fhir.Element
        field :active, :boolean
        field :address, [Fhir.Address], default: []
        field :birthDate, :date
        field :communication, [Fhir.PatientCommunication], default: []
        field :contact, [Fhir.PatientContact], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :deceasedBoolean, :boolean
        field :deceasedDateTime, :string
        field :extension, [Fhir.Extension], default: []
        field :gender, :string
        field :generalPractitioner, [Fhir.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :link, [Fhir.PatientLink], default: []
        field :managingOrganization, Fhir.Reference
        field :maritalStatus, Fhir.CodeableConcept
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :multipleBirthBoolean, :boolean
        field :multipleBirthInteger, :float
        field :name, [Fhir.HumanName], default: []
        field :photo, [Fhir.Attachment], default: []
        field :resourceType, :string, default: "Patient"
        field :telecom, [Fhir.ContactPoint], default: []
        field :text, Fhir.Narrative
  end
end
