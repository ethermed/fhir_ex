defmodule Fhir.Generated.ImplementationGuideTemplate do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_scope, Fhir.Generated.Element
        field :_source, Fhir.Generated.Element
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :scope, :string
        field :source, :string
  end
end
