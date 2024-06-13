defmodule Fhir.Generated.ResearchSubject do
  use TypedStruct

  typedstruct do
    field :_actualComparisonGroup, Fhir.Generated.Element
        field :_assignedComparisonGroup, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :actualComparisonGroup, :string
        field :assignedComparisonGroup, :string
        field :consent, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :progress, [Fhir.Generated.ResearchSubjectProgress], default: []
        field :resourceType, :string, default: "ResearchSubject"
        field :status, :string
        field :study, Fhir.Generated.Reference
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
