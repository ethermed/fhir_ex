defmodule Fhir.MeasureReportPopulation1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_count, Fhir.Element
        field :_linkId, Fhir.Element
        field :code, Fhir.CodeableConcept
        field :count, :float
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :subjectReport, [Fhir.Reference], default: []
        field :subjectResults, Fhir.Reference
        field :subjects, Fhir.Reference
  end
end
