defmodule Fhir.ImagingStudy do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_numberOfInstances, Fhir.Element
        field :_numberOfSeries, Fhir.Element
        field :_started, Fhir.Element
        field :_status, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :description, :string
        field :encounter, Fhir.Reference
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :modality, [Fhir.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :numberOfInstances, :float
        field :numberOfSeries, :float
        field :partOf, [Fhir.Reference], default: []
        field :procedure, [Fhir.CodeableReference], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :referrer, Fhir.Reference
        field :resourceType, :string, default: "ImagingStudy"
        field :series, [Fhir.ImagingStudySeries], default: []
        field :started, :datetime
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
