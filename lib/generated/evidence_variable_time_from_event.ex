defmodule Fhir.EvidenceVariableTimeFromEvent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_eventDateTime, Fhir.Element)
    field(:_eventId, Fhir.Element)
    field(:description, :string)
    field(:eventCodeableConcept, Fhir.CodeableConcept)
    field(:eventDateTime, :string)
    field(:eventId, :string)
    field(:eventReference, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:quantity, Fhir.Quantity)
    field(:range, Fhir.Range)
  end
end
