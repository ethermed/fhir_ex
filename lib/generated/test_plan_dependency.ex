defmodule Fhir.Generated.TestPlanDependency do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :predecessor, Fhir.Generated.Reference
  end
end
