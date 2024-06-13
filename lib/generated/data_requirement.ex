defmodule Fhir.Generated.DataRequirement do
  use TypedStruct

  typedstruct do
    field :_limit, Fhir.Generated.Element
        field :_mustSupport, [Fhir.Generated.Element], default: []
        field :_type, Fhir.Generated.Element
        field :codeFilter, [Fhir.Generated.DataRequirementCodeFilter], default: []
        field :dateFilter, [Fhir.Generated.DataRequirementDateFilter], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :limit, :float
        field :mustSupport, [:string], default: []
        field :profile, [:string], default: []
        field :sort, [Fhir.Generated.DataRequirementSort], default: []
        field :subjectCodeableConcept, Fhir.Generated.CodeableConcept
        field :subjectReference, Fhir.Generated.Reference
        field :type, :string
        field :valueFilter, [Fhir.Generated.DataRequirementValueFilter], default: []
  end
end
