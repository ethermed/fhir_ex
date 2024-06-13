defmodule Fhir.Generated.MeasureReportPopulation1 do
  use TypedStruct

  typedstruct do
    field :_count, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :count, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :subjectReport, [Fhir.Generated.Reference], default: []
        field :subjectResults, Fhir.Generated.Reference
        field :subjects, Fhir.Generated.Reference
  end
end
