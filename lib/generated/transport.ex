defmodule Fhir.Transport do
  use TypedStruct

  typedstruct do
    field(:_authoredOn, Fhir.Element)
    field(:_completionTime, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_instantiatesUri, Fhir.Element)
    field(:_intent, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_lastModified, Fhir.Element)
    field(:_priority, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:authoredOn, :datetime)
    field(:basedOn, [Fhir.Reference], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:completionTime, :datetime)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:currentLocation, Fhir.Reference)
    field(:description, :string)
    field(:encounter, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:focus, Fhir.Reference)
    field(:for, Fhir.Reference)
    field(:groupIdentifier, Fhir.Identifier)
    field(:history, Fhir.Reference)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:input, [Fhir.TransportInput], default: [])
    field(:instantiatesCanonical, :string)
    field(:instantiatesUri, :string)
    field(:insurance, [Fhir.Reference], default: [])
    field(:intent, :string)
    field(:language, :string)
    field(:lastModified, :datetime)
    field(:location, Fhir.Reference)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:output, [Fhir.TransportOutput], default: [])
    field(:owner, Fhir.Reference)
    field(:partOf, [Fhir.Reference], default: [])
    field(:performerType, [Fhir.CodeableConcept], default: [])
    field(:priority, :string)
    field(:reason, Fhir.CodeableReference)
    field(:relevantHistory, [Fhir.Reference], default: [])
    field(:requestedLocation, Fhir.Reference)
    field(:requester, Fhir.Reference)
    field(:resourceType, :string, default: "Transport")
    field(:restriction, Fhir.TransportRestriction)
    field(:status, :string)
    field(:statusReason, Fhir.CodeableConcept)
    field(:text, Fhir.Narrative)
  end
end