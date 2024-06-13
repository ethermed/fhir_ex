defmodule Fhir.Generated.InventoryReport do
  use TypedStruct

  typedstruct do
    field :_countType, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_reportedDateTime, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :countType, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :inventoryListing, [Fhir.Generated.InventoryReportInventoryListing], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :operationType, Fhir.Generated.CodeableConcept
        field :operationTypeReason, Fhir.Generated.CodeableConcept
        field :reportedDateTime, :datetime
        field :reporter, Fhir.Generated.Reference
        field :reportingPeriod, Fhir.Generated.Period
        field :resourceType, :string, default: "InventoryReport"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
