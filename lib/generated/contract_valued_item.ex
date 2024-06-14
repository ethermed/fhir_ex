defmodule Fhir.ContractValuedItem do
  use TypedStruct

  typedstruct do
    field(:_effectiveTime, Fhir.Element)
    field(:_factor, Fhir.Element)
    field(:_linkId, [Fhir.Element], default: [])
    field(:_payment, Fhir.Element)
    field(:_paymentDate, Fhir.Element)
    field(:_points, Fhir.Element)
    field(:_securityLabelNumber, [Fhir.Element], default: [])
    field(:effectiveTime, :datetime)
    field(:entityCodeableConcept, Fhir.CodeableConcept)
    field(:entityReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:linkId, [:string], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:net, Fhir.Money)
    field(:payment, :string)
    field(:paymentDate, :datetime)
    field(:points, :decimal)
    field(:quantity, Fhir.Quantity)
    field(:recipient, Fhir.Reference)
    field(:responsible, Fhir.Reference)
    field(:securityLabelNumber, [:float], default: [])
    field(:unitPrice, Fhir.Money)
  end
end
