defmodule Fhir.Generated.EvidenceAttributeEstimate do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_level, Fhir.Generated.Element
        field :attributeEstimate, [Fhir.Generated.EvidenceAttributeEstimate], default: []
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :level, :decimal
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :quantity, Fhir.Generated.Quantity
        field :range, Fhir.Generated.Range
        field :type, Fhir.Generated.CodeableConcept
  end
end
