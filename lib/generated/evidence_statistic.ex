defmodule Fhir.Generated.EvidenceStatistic do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_numberAffected, Fhir.Generated.Element
        field :_numberOfEvents, Fhir.Generated.Element
        field :attributeEstimate, [Fhir.Generated.EvidenceAttributeEstimate], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modelCharacteristic, [Fhir.Generated.EvidenceModelCharacteristic], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :numberAffected, :float
        field :numberOfEvents, :float
        field :quantity, Fhir.Generated.Quantity
        field :sampleSize, Fhir.Generated.EvidenceSampleSize
        field :statisticType, Fhir.Generated.CodeableConcept
  end
end
