defmodule Fhir.Generated.MedicationAdministrationDosage do
  use TypedStruct

  typedstruct do
    field :_text, Fhir.Generated.Element
        field :dose, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :rateQuantity, Fhir.Generated.Quantity
        field :rateRatio, Fhir.Generated.Ratio
        field :route, Fhir.Generated.CodeableConcept
        field :site, Fhir.Generated.CodeableConcept
        field :text, :string
  end
end
