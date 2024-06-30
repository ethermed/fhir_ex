defmodule Fhir.AppointmentParticipant do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_required, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:actor, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:required, :boolean)
    field(:status, :string)
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
