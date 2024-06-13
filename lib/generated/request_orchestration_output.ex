defmodule Fhir.Generated.RequestOrchestrationOutput do
  use TypedStruct

  typedstruct do
    field :_relatedData, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relatedData, :string
        field :requirement, Fhir.Generated.DataRequirement
        field :title, :string
  end
end
