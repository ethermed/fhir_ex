defmodule Fhir.Generated.ImplementationGuideParameter do
  use TypedStruct

  typedstruct do
    field :_value, Fhir.Generated.Element
        field :code, Fhir.Generated.Coding
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :value, :string
  end
end
