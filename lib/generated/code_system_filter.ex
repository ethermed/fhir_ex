defmodule Fhir.CodeSystemFilter do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_operator, [Fhir.Element], default: [])
    field(:_value, Fhir.Element)
    field(:code, :string)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operator, [:string], default: [])
    field(:value, :string)
  end
end
