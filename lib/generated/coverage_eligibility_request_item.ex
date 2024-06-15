defmodule Fhir.CoverageEligibilityRequestItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_supportingInfoSequence, [Fhir.Element], default: []
        field :category, Fhir.CodeableConcept
        field :detail, [Fhir.Reference], default: []
        field :diagnosis, [Fhir.CoverageEligibilityRequestDiagnosis], default: []
        field :extension, [Fhir.Extension], default: []
        field :facility, Fhir.Reference
        field :id, :string
        field :modifier, [Fhir.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :productOrService, Fhir.CodeableConcept
        field :provider, Fhir.Reference
        field :quantity, Fhir.Quantity
        field :supportingInfoSequence, [:float], default: []
        field :unitPrice, Fhir.Money
  end
end
