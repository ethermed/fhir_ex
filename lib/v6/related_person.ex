defmodule Fhir.v6().RelatedPerson do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_birthDate, Fhir.v6().Element)
    field(:_gender, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:active, :boolean)
    field(:address, [Fhir.v6().Address], default: [])
    field(:birthDate, :date)
    field(:communication, [Fhir.v6().RelatedPersonCommunication], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:gender, :string)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, [Fhir.v6().HumanName], default: [])
    field(:patient, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
    field(:photo, [Fhir.v6().Attachment], default: [])
    field(:relationship, [Fhir.v6().CodeableConcept], default: [])
    field(:resourceType, :string, default: "RelatedPerson")
    field(:telecom, [Fhir.v6().ContactPoint], default: [])
    field(:text, Fhir.v6().Narrative)
  end
end
