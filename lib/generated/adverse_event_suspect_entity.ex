defmodule Fhir.AdverseEventSuspectEntity do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :causality, Fhir.AdverseEventCausality
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :instanceCodeableConcept, Fhir.CodeableConcept
        field :instanceReference, Fhir.Reference
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
