defmodule Fhir.Generated.ChargeItem do
  use TypedStruct

  typedstruct do
    field :_definitionUri, [Fhir.Generated.Element], default: []
        field :_enteredDate, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :account, [Fhir.Generated.Reference], default: []
        field :bodysite, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :costCenter, Fhir.Generated.Reference
        field :definitionCanonical, [:string], default: []
        field :definitionUri, [:string], default: []
        field :encounter, Fhir.Generated.Reference
        field :enteredDate, :datetime
        field :enterer, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceTiming, Fhir.Generated.Timing
        field :overrideReason, Fhir.Generated.CodeableConcept
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.ChargeItemPerformer], default: []
        field :performingOrganization, Fhir.Generated.Reference
        field :product, [Fhir.Generated.CodeableReference], default: []
        field :quantity, Fhir.Generated.Quantity
        field :reason, [Fhir.Generated.CodeableConcept], default: []
        field :requestingOrganization, Fhir.Generated.Reference
        field :resourceType, :string, default: "ChargeItem"
        field :service, [Fhir.Generated.CodeableReference], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :totalPriceComponent, Fhir.Generated.MonetaryComponent
        field :unitPriceComponent, Fhir.Generated.MonetaryComponent
  end
end
