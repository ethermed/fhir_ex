defmodule Fhir.Generated.SubstancePolymerDegreeOfPolymerisation do
  use TypedStruct

  typedstruct do
    field :_average, Fhir.Generated.Element
        field :_high, Fhir.Generated.Element
        field :_low, Fhir.Generated.Element
        field :average, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :high, :float
        field :id, :string
        field :low, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
