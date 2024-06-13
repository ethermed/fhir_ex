defmodule Fhir.Generated.TestScriptAction1 do
  use TypedStruct

  typedstruct do
    field :assert, Fhir.Generated.TestScriptAssert
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operation, Fhir.Generated.TestScriptOperation
  end
end
