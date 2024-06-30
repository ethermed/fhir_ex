defmodule Fhir.CoverageEligibilityResponseInsurance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_inforce, Fhir.Element)
    field(:benefitPeriod, Fhir.Period)
    field(:coverage, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:inforce, :boolean)
    field(:item, [Fhir.CoverageEligibilityResponseItem], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
