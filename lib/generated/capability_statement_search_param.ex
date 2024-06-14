defmodule Fhir.CapabilityStatementSearchParam do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:definition, :string)
    field(:documentation, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:type, :string)
  end
end