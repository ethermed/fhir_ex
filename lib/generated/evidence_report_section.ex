defmodule Fhir.Generated.EvidenceReportSection do
  use TypedStruct

  typedstruct do
    field :_mode, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :author, [Fhir.Generated.Reference], default: []
        field :emptyReason, Fhir.Generated.CodeableConcept
        field :entryClassifier, [Fhir.Generated.CodeableConcept], default: []
        field :entryQuantity, [Fhir.Generated.Quantity], default: []
        field :entryReference, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, Fhir.Generated.CodeableConcept
        field :focusReference, Fhir.Generated.Reference
        field :id, :string
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :orderedBy, Fhir.Generated.CodeableConcept
        field :section, [Fhir.Generated.EvidenceReportSection], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
  end
end
