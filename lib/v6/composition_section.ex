defmodule Fhir.v6().CompositionSection do
  use TypedStruct

  typedstruct do
    field(:_title, Fhir.v6().Element)
    field(:author, [Fhir.v6().Reference], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:emptyReason, Fhir.v6().CodeableConcept)
    field(:entry, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focus, Fhir.v6().Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:orderedBy, Fhir.v6().CodeableConcept)
    field(:section, [Fhir.v6().CompositionSection], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:title, :string)
  end
end
