defmodule Fhir.v6().EvidenceReportSection do
  use TypedStruct

  typedstruct do
    field(:_mode, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:author, [Fhir.v6().Reference], default: [])
    field(:emptyReason, Fhir.v6().CodeableConcept)
    field(:entryClassifier, [Fhir.v6().CodeableConcept], default: [])
    field(:entryQuantity, [Fhir.v6().Quantity], default: [])
    field(:entryReference, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focus, Fhir.v6().CodeableConcept)
    field(:focusReference, Fhir.v6().Reference)
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:orderedBy, Fhir.v6().CodeableConcept)
    field(:section, [Fhir.v6().EvidenceReportSection], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:title, :string)
  end
end
