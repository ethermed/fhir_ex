defmodule Fhir.ParameterDefinition do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.Element)
    field(:_max, Fhir.Element)
    field(:_min, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:_use, Fhir.Element)
    field(:documentation, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:name, :string)
    field(:profile, :string)
    field(:type, :string)
    field(:use, :string)
  end
end
