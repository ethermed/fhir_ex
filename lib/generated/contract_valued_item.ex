defmodule Fhir.Generated.ContractValuedItem do
  use TypedStruct

  typedstruct do
    field :_effectiveTime, Fhir.Generated.Element
        field :_factor, Fhir.Generated.Element
        field :_linkId, [Fhir.Generated.Element], default: []
        field :_payment, Fhir.Generated.Element
        field :_paymentDate, Fhir.Generated.Element
        field :_points, Fhir.Generated.Element
        field :_securityLabelNumber, [Fhir.Generated.Element], default: []
        field :effectiveTime, :datetime
        field :entityCodeableConcept, Fhir.Generated.CodeableConcept
        field :entityReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :linkId, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :net, Fhir.Generated.Money
        field :payment, :string
        field :paymentDate, :datetime
        field :points, :decimal
        field :quantity, Fhir.Generated.Quantity
        field :recipient, Fhir.Generated.Reference
        field :responsible, Fhir.Generated.Reference
        field :securityLabelNumber, [:float], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
