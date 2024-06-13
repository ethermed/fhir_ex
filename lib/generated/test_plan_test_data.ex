defmodule Fhir.Generated.TestPlanTestData do
  use TypedStruct

  typedstruct do
    field :_sourceString, Fhir.Generated.Element
        field :content, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :sourceReference, Fhir.Generated.Reference
        field :sourceString, :string
        field :type, Fhir.Generated.Coding
  end
end
