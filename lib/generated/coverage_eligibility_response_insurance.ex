defmodule Fhir.Generated.CoverageEligibilityResponseInsurance do
  use TypedStruct

  typedstruct do
    field :_inforce, Fhir.Generated.Element
        field :benefitPeriod, Fhir.Generated.Period
        field :coverage, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :inforce, :boolean
        field :item, [Fhir.Generated.CoverageEligibilityResponseItem], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
