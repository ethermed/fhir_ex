defmodule Fhir.v6().ImplementationGuideDependsOn do
  use TypedStruct

  typedstruct do
    field(:_packageId, Fhir.v6().Element)
    field(:_reason, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:packageId, :string)
    field(:reason, :string)
    field(:uri, :string)
    field(:version, :string)
  end
end
