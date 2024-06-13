defmodule Fhir.Generated.ElementDefinitionDiscriminator do
  use TypedStruct

  typedstruct do
    field :_path, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, :string
        field :type, any()
  end
end
