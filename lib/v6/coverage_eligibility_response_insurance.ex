defmodule Fhir.v6().CoverageEligibilityResponseInsurance do
  use TypedStruct

  typedstruct do
    field(:_inforce, Fhir.v6().Element)
    field(:benefitPeriod, Fhir.v6().Period)
    field(:coverage, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:inforce, :boolean)
    field(:item, [Fhir.v6().CoverageEligibilityResponseItem], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
