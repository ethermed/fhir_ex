defmodule Fhir.Generated.MedicationKnowledgeCost do
  use TypedStruct

  typedstruct do
    field :_source, Fhir.Generated.Element
        field :costCodeableConcept, Fhir.Generated.CodeableConcept
        field :costMoney, Fhir.Generated.Money
        field :effectiveDate, [Fhir.Generated.Period], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
