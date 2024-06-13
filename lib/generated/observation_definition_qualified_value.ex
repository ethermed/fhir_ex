defmodule Fhir.Generated.ObservationDefinitionQualifiedValue do
  use TypedStruct

  typedstruct do
    field :_condition, Fhir.Generated.Element
        field :_gender, Fhir.Generated.Element
        field :_rangeCategory, Fhir.Generated.Element
        field :abnormalCodedValueSet, :string
        field :age, Fhir.Generated.Range
        field :appliesTo, [Fhir.Generated.CodeableConcept], default: []
        field :condition, :string
        field :context, Fhir.Generated.CodeableConcept
        field :criticalCodedValueSet, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :gender, :string
        field :gestationalAge, Fhir.Generated.Range
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :normalCodedValueSet, :string
        field :range, Fhir.Generated.Range
        field :rangeCategory, :string
        field :validCodedValueSet, :string
  end
end
