defmodule Fhir.Generated.ExplanationOfBenefitEvent do
  use TypedStruct

  typedstruct do
    field :_whenDateTime, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :whenDateTime, :string
        field :whenPeriod, Fhir.Generated.Period
  end
end
