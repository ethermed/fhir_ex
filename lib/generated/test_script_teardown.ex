defmodule Fhir.Generated.TestScriptTeardown do
  use TypedStruct

  typedstruct do
    field :action, [Fhir.Generated.TestScriptAction2], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
