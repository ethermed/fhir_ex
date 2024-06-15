defmodule Fhir.MedicationKnowledgeCost do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_source, Fhir.Element
        field :costCodeableConcept, Fhir.CodeableConcept
        field :costMoney, Fhir.Money
        field :effectiveDate, [Fhir.Period], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :source, :string
        field :type, Fhir.CodeableConcept
  end
end
