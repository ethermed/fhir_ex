defmodule Fhir.ObservationDefinitionQualifiedValue do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_condition, Fhir.Element)
    field(:_gender, Fhir.Element)
    field(:_rangeCategory, Fhir.Element)
    field(:abnormalCodedValueSet, :string)
    field(:age, Fhir.Range)
    field(:appliesTo, [Fhir.CodeableConcept], default: [])
    field(:condition, :string)
    field(:context, Fhir.CodeableConcept)
    field(:criticalCodedValueSet, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:gender, :string)
    field(:gestationalAge, Fhir.Range)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:normalCodedValueSet, :string)
    field(:range, Fhir.Range)
    field(:rangeCategory, :string)
    field(:validCodedValueSet, :string)
  end
end
