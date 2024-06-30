defmodule Fhir.EvidenceReportSection do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_mode, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:author, [Fhir.Reference], default: [])
    field(:emptyReason, Fhir.CodeableConcept)
    field(:entryClassifier, [Fhir.CodeableConcept], default: [])
    field(:entryQuantity, [Fhir.Quantity], default: [])
    field(:entryReference, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:focus, Fhir.CodeableConcept)
    field(:focusReference, Fhir.Reference)
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:orderedBy, Fhir.CodeableConcept)
    field(:section, [Fhir.EvidenceReportSection], default: [])
    field(:text, Fhir.Narrative)
    field(:title, :string)
  end
end
