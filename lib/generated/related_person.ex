defmodule Fhir.RelatedPerson do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.Element)
    field(:_birthDate, Fhir.Element)
    field(:_gender, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:active, :boolean)
    field(:address, [Fhir.Address], default: [])
    field(:birthDate, :date)
    field(:communication, [Fhir.RelatedPersonCommunication], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:gender, :string)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, [Fhir.HumanName], default: [])
    field(:patient, Fhir.Reference)
    field(:period, Fhir.Period)
    field(:photo, [Fhir.Attachment], default: [])
    field(:relationship, [Fhir.CodeableConcept], default: [])
    field(:resourceType, :string, default: "RelatedPerson")
    field(:telecom, [Fhir.ContactPoint], default: [])
    field(:text, Fhir.Narrative)
  end
end
