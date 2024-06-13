defmodule Fhir.Generated.CoverageEligibilityResponseItem do
  use TypedStruct

  typedstruct do
    field :_authorizationRequired, Fhir.Generated.Element
        field :_authorizationUrl, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_excluded, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :authorizationRequired, :boolean
        field :authorizationSupporting, [Fhir.Generated.CodeableConcept], default: []
        field :authorizationUrl, :string
        field :benefit, [Fhir.Generated.CoverageEligibilityResponseBenefit], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :description, :string
        field :excluded, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifier, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :network, Fhir.Generated.CodeableConcept
        field :productOrService, Fhir.Generated.CodeableConcept
        field :provider, Fhir.Generated.Reference
        field :term, Fhir.Generated.CodeableConcept
        field :unit, Fhir.Generated.CodeableConcept
  end
end
