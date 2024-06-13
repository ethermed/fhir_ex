defmodule Fhir.Generated.CoverageEligibilityRequestItem do
  use TypedStruct

  typedstruct do
    field :_supportingInfoSequence, [Fhir.Generated.Element], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :detail, [Fhir.Generated.Reference], default: []
        field :diagnosis, [Fhir.Generated.CoverageEligibilityRequestDiagnosis], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :facility, Fhir.Generated.Reference
        field :id, :string
        field :modifier, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :productOrService, Fhir.Generated.CodeableConcept
        field :provider, Fhir.Generated.Reference
        field :quantity, Fhir.Generated.Quantity
        field :supportingInfoSequence, [:float], default: []
        field :unitPrice, Fhir.Generated.Money
  end
end
