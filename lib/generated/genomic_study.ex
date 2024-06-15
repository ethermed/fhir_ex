defmodule Fhir.GenomicStudy do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, Fhir.Element
        field :_language, Fhir.Element
        field :_startDate, Fhir.Element
        field :_status, Fhir.Element
        field :analysis, [Fhir.GenomicStudyAnalysis], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :description, :string
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, :string
        field :instantiatesUri, :string
        field :interpreter, [Fhir.Reference], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :referrer, Fhir.Reference
        field :resourceType, :string, default: "GenomicStudy"
        field :startDate, :datetime
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :type, [Fhir.CodeableConcept], default: []
  end
end
