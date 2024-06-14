defmodule Fhir.v6().List do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_mode, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:date, :datetime)
    field(:emptyReason, Fhir.v6().CodeableConcept)
    field(:encounter, Fhir.v6().Reference)
    field(:entry, [Fhir.v6().ListEntry], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:orderedBy, Fhir.v6().CodeableConcept)
    field(:resourceType, :string, default: "List")
    field(:source, Fhir.v6().Reference)
    field(:status, :string)
    field(:subject, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:title, :string)
  end
end
