defmodule Fhir.Generated.HealthcareServiceEligibility do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :comment, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
