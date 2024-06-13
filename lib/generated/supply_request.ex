defmodule Fhir.Generated.SupplyRequest do
  use TypedStruct

  typedstruct do
    field :_authoredOn, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :deliverFor, Fhir.Generated.Reference
        field :deliverFrom, Fhir.Generated.Reference
        field :deliverTo, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :item, Fhir.Generated.CodeableReference
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :parameter, [Fhir.Generated.SupplyRequestParameter], default: []
        field :priority, :string
        field :quantity, Fhir.Generated.Quantity
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :requester, Fhir.Generated.Reference
        field :resourceType, :string, default: "SupplyRequest"
        field :status, :string
        field :supplier, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
