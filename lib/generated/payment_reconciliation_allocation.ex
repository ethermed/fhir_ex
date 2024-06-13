defmodule Fhir.Generated.PaymentReconciliationAllocation do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_targetItemPositiveInt, Fhir.Generated.Element
        field :_targetItemString, Fhir.Generated.Element
        field :account, Fhir.Generated.Reference
        field :amount, Fhir.Generated.Money
        field :date, :date
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :payee, Fhir.Generated.Reference
        field :predecessor, Fhir.Generated.Identifier
        field :response, Fhir.Generated.Reference
        field :responsible, Fhir.Generated.Reference
        field :submitter, Fhir.Generated.Reference
        field :target, Fhir.Generated.Reference
        field :targetItemIdentifier, Fhir.Generated.Identifier
        field :targetItemPositiveInt, :float
        field :targetItemString, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
