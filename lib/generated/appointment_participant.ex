defmodule Fhir.Generated.AppointmentParticipant do
  use TypedStruct

  typedstruct do
    field :_required, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :actor, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :required, :boolean
        field :status, :string
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
