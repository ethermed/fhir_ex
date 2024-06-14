defmodule Fhir.v6().InventoryReport do
  use TypedStruct

  typedstruct do
    field(:_countType, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_reportedDateTime, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:countType, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:inventoryListing, [Fhir.v6().InventoryReportInventoryListing], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:operationType, Fhir.v6().CodeableConcept)
    field(:operationTypeReason, Fhir.v6().CodeableConcept)
    field(:reportedDateTime, :datetime)
    field(:reporter, Fhir.v6().Reference)
    field(:reportingPeriod, Fhir.v6().Period)
    field(:resourceType, :string, default: "InventoryReport")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
