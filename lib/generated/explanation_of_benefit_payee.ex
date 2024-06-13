defmodule Fhir.Generated.ExplanationOfBenefitPayee do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :party, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
  end
end