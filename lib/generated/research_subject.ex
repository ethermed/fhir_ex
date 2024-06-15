defmodule Fhir.ResearchSubject do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_actualComparisonGroup, Fhir.Element
        field :_assignedComparisonGroup, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :actualComparisonGroup, :string
        field :assignedComparisonGroup, :string
        field :consent, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :period, Fhir.Period
        field :progress, [Fhir.ResearchSubjectProgress], default: []
        field :resourceType, :string, default: "ResearchSubject"
        field :status, :string
        field :study, Fhir.Reference
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
