defmodule Fhir.Generated.TestScriptMetadata do
  use TypedStruct

  typedstruct do
    field :capability, [Fhir.Generated.TestScriptCapability], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :link, [Fhir.Generated.TestScriptLink], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
