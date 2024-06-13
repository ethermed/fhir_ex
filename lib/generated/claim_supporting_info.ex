defmodule Fhir.Generated.ClaimSupportingInfo do
  use TypedStruct

  typedstruct do
    field :_sequence, Fhir.Generated.Element
        field :_timingDate, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :category, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, Fhir.Generated.CodeableConcept
        field :sequence, :float
        field :timingDate, :string
        field :timingPeriod, Fhir.Generated.Period
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueIdentifier, Fhir.Generated.Identifier
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueReference, Fhir.Generated.Reference
        field :valueString, :string
  end
end
