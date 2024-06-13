defmodule Fhir.Generated.Composition do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_url, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :attester, [Fhir.Generated.CompositionAttester], default: []
        field :author, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :custodian, Fhir.Generated.Reference
        field :date, :datetime
        field :encounter, Fhir.Generated.Reference
        field :event, [Fhir.Generated.CompositionEvent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :note, [Fhir.Generated.Annotation], default: []
        field :relatesTo, [Fhir.Generated.RelatedArtifact], default: []
        field :resourceType, :string, default: "Composition"
        field :section, [Fhir.Generated.CompositionSection], default: []
        field :status, :string
        field :subject, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
        field :type, Fhir.Generated.CodeableConcept
        field :url, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :version, :string
  end
end
