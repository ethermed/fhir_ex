defmodule Fhir.Generated.EvidenceModelCharacteristic do
  use TypedStruct

  typedstruct do
    field :attributeEstimate, [Fhir.Generated.EvidenceAttributeEstimate], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :value, Fhir.Generated.Quantity
        field :variable, [Fhir.Generated.EvidenceVariable], default: []
  end
end
