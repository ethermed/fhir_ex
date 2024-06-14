defmodule Fhir.v6().DeviceConformsTo do
  use TypedStruct

  typedstruct do
    field(:_version, Fhir.v6().Element)
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:specification, Fhir.v6().CodeableConcept)
    field(:version, :string)
  end
end
