defmodule Fhir.CompositionSection do
  use TypedStruct

  typedstruct do
    field(:_title, Fhir.Element)
    field(:author, [Fhir.Reference], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:emptyReason, Fhir.CodeableConcept)
    field(:entry, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:focus, Fhir.Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:orderedBy, Fhir.CodeableConcept)
    field(:section, [Fhir.CompositionSection], default: [])
    field(:text, Fhir.Narrative)
    field(:title, :string)
  end
end
