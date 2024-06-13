defmodule Fhir.Generated.ImagingSelection do
  use TypedStruct

  typedstruct do
    field :_frameOfReferenceUid, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_issued, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_seriesNumber, Fhir.Generated.Element
        field :_seriesUid, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_studyUid, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :bodySite, Fhir.Generated.CodeableReference
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :derivedFrom, [Fhir.Generated.Reference], default: []
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.Reference], default: []
        field :frameOfReferenceUid, :string
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instance, [Fhir.Generated.ImagingSelectionInstance], default: []
        field :issued, :timestamp
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :performer, [Fhir.Generated.ImagingSelectionPerformer], default: []
        field :resourceType, :string, default: "ImagingSelection"
        field :seriesNumber, :float
        field :seriesUid, :string
        field :status, :string
        field :studyUid, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
