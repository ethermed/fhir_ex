defmodule Fhir.Generated.AdverseEventSuspectEntity do
  use TypedStruct

  typedstruct do
    field :causality, Fhir.Generated.AdverseEventCausality
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instanceCodeableConcept, Fhir.Generated.CodeableConcept
        field :instanceReference, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
