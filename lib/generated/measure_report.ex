defmodule Fhir.Generated.MeasureReport do
  use TypedStruct

  typedstruct do
    field :_dataUpdateType, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :dataUpdateType, :string
        field :date, :datetime
        field :evaluatedResource, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :group, [Fhir.Generated.MeasureReportGroup], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :improvementNotation, Fhir.Generated.CodeableConcept
        field :inputParameters, Fhir.Generated.Reference
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :measure, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :reporter, Fhir.Generated.Reference
        field :reportingVendor, Fhir.Generated.Reference
        field :resourceType, :string, default: "MeasureReport"
        field :scoring, Fhir.Generated.CodeableConcept
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supplementalData, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :type, :string
  end
end
