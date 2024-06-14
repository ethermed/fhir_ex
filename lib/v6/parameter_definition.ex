defmodule Fhir.v6().ParameterDefinition do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_max, Fhir.v6().Element)
    field(:_min, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:name, :string)
    field(:profile, :string)
    field(:type, :string)
    field(:use, :string)
  end
end
