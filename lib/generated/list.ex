defmodule Fhir.List do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_mode, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:date, :datetime)
    field(:emptyReason, Fhir.CodeableConcept)
    field(:encounter, Fhir.Reference)
    field(:entry, [Fhir.ListEntry], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:orderedBy, Fhir.CodeableConcept)
    field(:resourceType, :string, default: "List")
    field(:source, Fhir.Reference)
    field(:status, :string)
    field(:subject, [Fhir.Reference], default: [])
    field(:text, Fhir.Narrative)
    field(:title, :string)
  end
end