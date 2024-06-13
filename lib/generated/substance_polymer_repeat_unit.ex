defmodule Fhir.Generated.SubstancePolymerRepeatUnit do
  use TypedStruct

  typedstruct do
    field :_amount, Fhir.Generated.Element
        field :_unit, Fhir.Generated.Element
        field :amount, :float
        field :degreeOfPolymerisation, [Fhir.Generated.SubstancePolymerDegreeOfPolymerisation], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :orientation, Fhir.Generated.CodeableConcept
        field :structuralRepresentation, [Fhir.Generated.SubstancePolymerStructuralRepresentation], default: []
        field :unit, :string
  end
end
