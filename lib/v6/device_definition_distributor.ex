defmodule Fhir.v6().DeviceDefinitionDistributor do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:organizationReference, [Fhir.v6().Reference], default: [])
  end
end
