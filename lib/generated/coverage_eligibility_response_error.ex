defmodule Fhir.Generated.CoverageEligibilityResponseError do
  use TypedStruct

  typedstruct do
    field :_expression, [Fhir.Generated.Element], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :expression, [:string], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
