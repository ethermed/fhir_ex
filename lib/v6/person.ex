defmodule Fhir.v6().Person do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_birthDate, Fhir.v6().Element)
    field(:_deceasedBoolean, Fhir.v6().Element)
    field(:_deceasedDateTime, Fhir.v6().Element)
    field(:_gender, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:active, :boolean)
    field(:address, [Fhir.v6().Address], default: [])
    field(:birthDate, :date)
    field(:communication, [Fhir.v6().PersonCommunication], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:deceasedBoolean, :boolean)
    field(:deceasedDateTime, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:gender, :string)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:link, [Fhir.v6().PersonLink], default: [])
    field(:managingOrganization, Fhir.v6().Reference)
    field(:maritalStatus, Fhir.v6().CodeableConcept)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, [Fhir.v6().HumanName], default: [])
    field(:photo, [Fhir.v6().Attachment], default: [])
    field(:resourceType, :string, default: "Person")
    field(:telecom, [Fhir.v6().ContactPoint], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end