defmodule Fhir.v6().AppointmentParticipant do
  use TypedStruct

  typedstruct do
    field(:_required, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:actor, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:required, :boolean)
    field(:status, :string)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
