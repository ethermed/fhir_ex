defmodule Fhir.DeviceConformsTo do
  use TypedStruct

  typedstruct do
    field(:_version, Fhir.Element)
    field(:category, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:specification, Fhir.CodeableConcept)
    field(:version, :string)
  end
end
