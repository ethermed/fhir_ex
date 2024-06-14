defmodule Fhir.v6().ObservationDefinitionQualifiedValue do
  use TypedStruct

  typedstruct do
    field(:_condition, Fhir.v6().Element)
    field(:_gender, Fhir.v6().Element)
    field(:_rangeCategory, Fhir.v6().Element)
    field(:abnormalCodedValueSet, :string)
    field(:age, Fhir.v6().Range)
    field(:appliesTo, [Fhir.v6().CodeableConcept], default: [])
    field(:condition, :string)
    field(:context, Fhir.v6().CodeableConcept)
    field(:criticalCodedValueSet, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:gender, :string)
    field(:gestationalAge, Fhir.v6().Range)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:normalCodedValueSet, :string)
    field(:range, Fhir.v6().Range)
    field(:rangeCategory, :string)
    field(:validCodedValueSet, :string)
  end
end
