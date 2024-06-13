defmodule Fhir.Generated.List do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_mode, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :date, :datetime
        field :emptyReason, Fhir.Generated.CodeableConcept
        field :encounter, Fhir.Generated.Reference
        field :entry, [Fhir.Generated.ListEntry], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :mode, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :orderedBy, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "List"
        field :source, Fhir.Generated.Reference
        field :status, :string
        field :subject, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
  end
end
