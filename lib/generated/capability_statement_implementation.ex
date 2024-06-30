defmodule Fhir.CapabilityStatementImplementation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:custodian, Fhir.Reference)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:url, :string)
  end
end
