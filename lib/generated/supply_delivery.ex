defmodule Fhir.Generated.SupplyDelivery do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :destination, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :partOf, [Fhir.Generated.Reference], default: []
        field :patient, Fhir.Generated.Reference
        field :receiver, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "SupplyDelivery"
        field :status, :string
        field :suppliedItem, [Fhir.Generated.SupplyDeliverySuppliedItem], default: []
        field :supplier, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
  end
end
