defmodule Fhir.v6().DeviceDefinitionMaterial do
  use TypedStruct

  typedstruct do
    field(:_allergenicIndicator, Fhir.v6().Element)
    field(:_alternate, Fhir.v6().Element)
    field(:allergenicIndicator, :boolean)
    field(:alternate, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:substance, Fhir.v6().CodeableConcept)
  end
end
