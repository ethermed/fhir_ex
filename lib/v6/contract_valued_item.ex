defmodule Fhir.v6().ContractValuedItem do
  use TypedStruct

  typedstruct do
    field(:_effectiveTime, Fhir.v6().Element)
    field(:_factor, Fhir.v6().Element)
    field(:_linkId, [Fhir.v6().Element], default: [])
    field(:_payment, Fhir.v6().Element)
    field(:_paymentDate, Fhir.v6().Element)
    field(:_points, Fhir.v6().Element)
    field(:_securityLabelNumber, [Fhir.v6().Element], default: [])
    field(:effectiveTime, :datetime)
    field(:entityCodeableConcept, Fhir.v6().CodeableConcept)
    field(:entityReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:linkId, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:net, Fhir.v6().Money)
    field(:payment, :string)
    field(:paymentDate, :datetime)
    field(:points, :decimal)
    field(:quantity, Fhir.v6().Quantity)
    field(:recipient, Fhir.v6().Reference)
    field(:responsible, Fhir.v6().Reference)
    field(:securityLabelNumber, [:float], default: [])
    field(:unitPrice, Fhir.v6().Money)
  end
end
