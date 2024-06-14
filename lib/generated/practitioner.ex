defmodule Fhir.Practitioner do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.Element)
    field(:_birthDate, Fhir.Element)
    field(:_deceasedBoolean, Fhir.Element)
    field(:_deceasedDateTime, Fhir.Element)
    field(:_gender, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:active, :boolean)
    field(:address, [Fhir.Address], default: [])
    field(:birthDate, :date)
    field(:communication, [Fhir.PractitionerCommunication], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:deceasedBoolean, :boolean)
    field(:deceasedDateTime, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:gender, :string)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, [Fhir.HumanName], default: [])
    field(:photo, [Fhir.Attachment], default: [])
    field(:qualification, [Fhir.PractitionerQualification], default: [])
    field(:resourceType, :string, default: "Practitioner")
    field(:telecom, [Fhir.ContactPoint], default: [])
    field(:text, Fhir.Narrative)
  end
end
