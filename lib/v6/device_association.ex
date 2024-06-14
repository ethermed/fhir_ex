defmodule Fhir.v6().DeviceAssociation do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:bodyStructure, Fhir.v6().Reference)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:device, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operation, [Fhir.v6().DeviceAssociationOperation], default: [])
    field(:period, Fhir.v6().Period)
    field(:resourceType, :string, default: "DeviceAssociation")
    field(:status, Fhir.v6().CodeableConcept)
    field(:statusReason, [Fhir.v6().CodeableConcept], default: [])
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
  end
end