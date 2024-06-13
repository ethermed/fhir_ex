defmodule Fhir.Generated.InsurancePlanGeneralCost do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_groupSize, Fhir.Generated.Element
        field :comment, :string
        field :cost, Fhir.Generated.Money
        field :extension, [Fhir.Generated.Extension], default: []
        field :groupSize, :float
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
