defmodule Fhir.v6().CapabilityStatementSearchParam do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:definition, :string)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:type, :string)
  end
end
