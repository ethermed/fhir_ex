defmodule Fhir.Generated.ObservationTriggeredBy do
  use TypedStruct

  typedstruct do
    field :_reason, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :observation, Fhir.Generated.Reference
        field :reason, :string
        field :type, :string
  end
end
