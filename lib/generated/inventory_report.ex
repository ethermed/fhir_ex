defmodule Fhir.InventoryReport do
  use TypedStruct

  typedstruct do
    field(:_countType, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_reportedDateTime, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:countType, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:inventoryListing, [Fhir.InventoryReportInventoryListing], default: [])
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:operationType, Fhir.CodeableConcept)
    field(:operationTypeReason, Fhir.CodeableConcept)
    field(:reportedDateTime, :datetime)
    field(:reporter, Fhir.Reference)
    field(:reportingPeriod, Fhir.Period)
    field(:resourceType, :string, default: "InventoryReport")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
