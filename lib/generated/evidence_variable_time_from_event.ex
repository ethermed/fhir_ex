defmodule Fhir.Generated.EvidenceVariableTimeFromEvent do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_eventDateTime, Fhir.Generated.Element
        field :_eventId, Fhir.Generated.Element
        field :description, :string
        field :eventCodeableConcept, Fhir.Generated.CodeableConcept
        field :eventDateTime, :string
        field :eventId, :string
        field :eventReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :quantity, Fhir.Generated.Quantity
        field :range, Fhir.Generated.Range
  end
end
