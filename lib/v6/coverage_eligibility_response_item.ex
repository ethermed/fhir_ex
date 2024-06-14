defmodule Fhir.v6().CoverageEligibilityResponseItem do
  use TypedStruct

  typedstruct do
    field(:_authorizationRequired, Fhir.v6().Element)
    field(:_authorizationUrl, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_excluded, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:authorizationRequired, :boolean)
    field(:authorizationSupporting, [Fhir.v6().CodeableConcept], default: [])
    field(:authorizationUrl, :string)
    field(:benefit, [Fhir.v6().CoverageEligibilityResponseBenefit], default: [])
    field(:category, Fhir.v6().CodeableConcept)
    field(:description, :string)
    field(:excluded, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifier, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:network, Fhir.v6().CodeableConcept)
    field(:productOrService, Fhir.v6().CodeableConcept)
    field(:provider, Fhir.v6().Reference)
    field(:term, Fhir.v6().CodeableConcept)
    field(:unit, Fhir.v6().CodeableConcept)
  end
end
