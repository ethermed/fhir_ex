defmodule Fhir.ChargeItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_definitionUri, [Fhir.Element], default: []
        field :_enteredDate, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_status, Fhir.Element
        field :account, [Fhir.Reference], default: []
        field :bodysite, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :costCenter, Fhir.Reference
        field :definitionCanonical, [:string], default: []
        field :definitionUri, [:string], default: []
        field :encounter, Fhir.Reference
        field :enteredDate, :datetime
        field :enterer, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceTiming, Fhir.Timing
        field :overrideReason, Fhir.CodeableConcept
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.ChargeItemPerformer], default: []
        field :performingOrganization, Fhir.Reference
        field :product, [Fhir.CodeableReference], default: []
        field :quantity, Fhir.Quantity
        field :reason, [Fhir.CodeableConcept], default: []
        field :requestingOrganization, Fhir.Reference
        field :resourceType, :string, default: "ChargeItem"
        field :service, [Fhir.CodeableReference], default: []
        field :status, :string
        field :subject, Fhir.Reference
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :totalPriceComponent, Fhir.MonetaryComponent
        field :unitPriceComponent, Fhir.MonetaryComponent
  end
end
