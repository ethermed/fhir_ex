defmodule Fhir.Generated.GenomicStudy do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_startDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :analysis, [Fhir.Generated.GenomicStudyAnalysis], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, :string
        field :instantiatesUri, :string
        field :interpreter, [Fhir.Generated.Reference], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :referrer, Fhir.Generated.Reference
        field :resourceType, :string, default: "GenomicStudy"
        field :startDate, :datetime
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
