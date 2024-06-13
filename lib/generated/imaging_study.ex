defmodule Fhir.Generated.ImagingStudy do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_numberOfInstances, Fhir.Generated.Element
        field :_numberOfSeries, Fhir.Generated.Element
        field :_started, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :encounter, Fhir.Generated.Reference
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modality, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :numberOfInstances, :float
        field :numberOfSeries, :float
        field :partOf, [Fhir.Generated.Reference], default: []
        field :procedure, [Fhir.Generated.CodeableReference], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :referrer, Fhir.Generated.Reference
        field :resourceType, :string, default: "ImagingStudy"
        field :series, [Fhir.Generated.ImagingStudySeries], default: []
        field :started, :datetime
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
