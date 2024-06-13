defmodule Fhir.Generated.ClaimSubDetail do
  use TypedStruct

  typedstruct do
    field :_factor, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :category, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :factor, :decimal
        field :id, :string
        field :modifier, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :net, Fhir.Generated.Money
        field :patientPaid, Fhir.Generated.Money
        field :productOrService, Fhir.Generated.CodeableConcept
        field :productOrServiceEnd, Fhir.Generated.CodeableConcept
        field :programCode, [Fhir.Generated.CodeableConcept], default: []
        field :quantity, Fhir.Generated.Quantity
        field :revenue, Fhir.Generated.CodeableConcept
        field :sequence, :float
        field :tax, Fhir.Generated.Money
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :udi, [Fhir.Generated.Reference], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
