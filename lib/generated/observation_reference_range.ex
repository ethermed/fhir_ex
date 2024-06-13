defmodule Fhir.Generated.ObservationReferenceRange do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :age, Fhir.Generated.Range
        field :appliesTo, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :high, Fhir.Generated.Quantity
        field :id, :string
        field :low, Fhir.Generated.Quantity
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :normalValue, Fhir.Generated.CodeableConcept
        field :text, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
