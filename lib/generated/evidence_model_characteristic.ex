defmodule Fhir.EvidenceModelCharacteristic do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :attributeEstimate, [Fhir.EvidenceAttributeEstimate], default: []
        field :code, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :value, Fhir.Quantity
        field :variable, [Fhir.EvidenceVariable], default: []
  end
end
