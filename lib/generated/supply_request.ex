defmodule Fhir.SupplyRequest do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_authoredOn, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_priority, Fhir.Element
        field :_status, Fhir.Element
        field :authoredOn, :datetime
        field :basedOn, [Fhir.Reference], default: []
        field :category, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :deliverFor, Fhir.Reference
        field :deliverFrom, Fhir.Reference
        field :deliverTo, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :item, Fhir.CodeableReference
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceTiming, Fhir.Timing
        field :parameter, [Fhir.SupplyRequestParameter], default: []
        field :priority, :string
        field :quantity, Fhir.Quantity
        field :reason, [Fhir.CodeableReference], default: []
        field :requester, Fhir.Reference
        field :resourceType, :string, default: "SupplyRequest"
        field :status, :string
        field :supplier, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
