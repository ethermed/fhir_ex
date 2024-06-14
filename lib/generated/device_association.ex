defmodule Fhir.DeviceAssociation do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:bodyStructure, Fhir.Reference)
    field(:category, [Fhir.CodeableConcept], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:device, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operation, [Fhir.DeviceAssociationOperation], default: [])
    field(:period, Fhir.Period)
    field(:resourceType, :string, default: "DeviceAssociation")
    field(:status, Fhir.CodeableConcept)
    field(:statusReason, [Fhir.CodeableConcept], default: [])
    field(:subject, Fhir.Reference)
    field(:text, Fhir.Narrative)
  end
end
