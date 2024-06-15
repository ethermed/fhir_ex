defmodule Fhir.ImagingSelection do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_frameOfReferenceUid, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_issued, Fhir.Element
        field :_language, Fhir.Element
        field :_seriesNumber, Fhir.Element
        field :_seriesUid, Fhir.Element
        field :_status, Fhir.Element
        field :_studyUid, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :bodySite, Fhir.CodeableReference
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :derivedFrom, [Fhir.Reference], default: []
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :focus, [Fhir.Reference], default: []
        field :frameOfReferenceUid, :string
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instance, [Fhir.ImagingSelectionInstance], default: []
        field :issued, :timestamp
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :performer, [Fhir.ImagingSelectionPerformer], default: []
        field :resourceType, :string, default: "ImagingSelection"
        field :seriesNumber, :float
        field :seriesUid, :string
        field :status, :string
        field :studyUid, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
