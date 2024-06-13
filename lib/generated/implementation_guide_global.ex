defmodule Fhir.Generated.ImplementationGuideGlobal do
  use TypedStruct

  typedstruct do
    field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :profile, :string
        field :type, :string
  end
end
