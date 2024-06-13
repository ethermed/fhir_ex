defmodule Fhir.Generated.DeviceUsageAdherence do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, [Fhir.Generated.CodeableConcept], default: []
  end
end
