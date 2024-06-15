defmodule Fhir.MeasureReport do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dataUpdateType, Fhir.Element
        field :_date, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :_type, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :dataUpdateType, :string
        field :date, :datetime
        field :evaluatedResource, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :group, [Fhir.MeasureReportGroup], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :improvementNotation, Fhir.CodeableConcept
        field :inputParameters, Fhir.Reference
        field :language, :string
        field :location, Fhir.Reference
        field :measure, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :period, Fhir.Period
        field :reporter, Fhir.Reference
        field :reportingVendor, Fhir.Reference
        field :resourceType, :string, default: "MeasureReport"
        field :scoring, Fhir.CodeableConcept
        field :status, :string
        field :subject, Fhir.Reference
        field :supplementalData, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :type, :string
  end
end
