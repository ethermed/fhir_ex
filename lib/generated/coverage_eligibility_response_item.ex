defmodule Fhir.CoverageEligibilityResponseItem do
  use TypedStruct

  typedstruct do
    field(:_authorizationRequired, Fhir.Element)
    field(:_authorizationUrl, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_excluded, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:authorizationRequired, :boolean)
    field(:authorizationSupporting, [Fhir.CodeableConcept], default: [])
    field(:authorizationUrl, :string)
    field(:benefit, [Fhir.CoverageEligibilityResponseBenefit], default: [])
    field(:category, Fhir.CodeableConcept)
    field(:description, :string)
    field(:excluded, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifier, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:network, Fhir.CodeableConcept)
    field(:productOrService, Fhir.CodeableConcept)
    field(:provider, Fhir.Reference)
    field(:term, Fhir.CodeableConcept)
    field(:unit, Fhir.CodeableConcept)
  end
end
