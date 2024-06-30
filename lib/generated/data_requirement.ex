defmodule Fhir.DataRequirement do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_limit, Fhir.Element)
    field(:_mustSupport, [Fhir.Element], default: [])
    field(:_type, Fhir.Element)
    field(:codeFilter, [Fhir.DataRequirementCodeFilter], default: [])
    field(:dateFilter, [Fhir.DataRequirementDateFilter], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:limit, :float)
    field(:mustSupport, [:string], default: [])
    field(:profile, [:string], default: [])
    field(:sort, [Fhir.DataRequirementSort], default: [])
    field(:subjectCodeableConcept, Fhir.CodeableConcept)
    field(:subjectReference, Fhir.Reference)
    field(:type, :string)
    field(:valueFilter, [Fhir.DataRequirementValueFilter], default: [])
  end
end
