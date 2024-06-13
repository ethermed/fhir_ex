defmodule Fhir.Generated.LinkageItem do
  use TypedStruct

  typedstruct do
    field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resource, Fhir.Generated.Reference
        field :type, :string
  end
end
