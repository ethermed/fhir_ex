defmodule Fhir.v6().DataRequirement do
  use TypedStruct

  typedstruct do
    field(:_limit, Fhir.v6().Element)
    field(:_mustSupport, [Fhir.v6().Element], default: [])
    field(:_type, Fhir.v6().Element)
    field(:codeFilter, [Fhir.v6().DataRequirementCodeFilter], default: [])
    field(:dateFilter, [Fhir.v6().DataRequirementDateFilter], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:limit, :float)
    field(:mustSupport, [:string], default: [])
    field(:profile, [:string], default: [])
    field(:sort, [Fhir.v6().DataRequirementSort], default: [])
    field(:subjectCodeableConcept, Fhir.v6().CodeableConcept)
    field(:subjectReference, Fhir.v6().Reference)
    field(:type, :string)
    field(:valueFilter, [Fhir.v6().DataRequirementValueFilter], default: [])
  end
end
