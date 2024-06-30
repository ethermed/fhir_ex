defmodule Fhir.TestScriptRequestHeader do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_field, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:field, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:value, :string)
  end
end
