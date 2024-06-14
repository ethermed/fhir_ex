defmodule Fhir.DeviceUsageAdherence do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reason, [Fhir.CodeableConcept], default: [])
  end
end
