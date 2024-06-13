defmodule Fhir.Generated.TestScriptScope do
  use TypedStruct

  typedstruct do
    field :artifact, :string
        field :conformance, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :phase, Fhir.Generated.CodeableConcept
  end
end
