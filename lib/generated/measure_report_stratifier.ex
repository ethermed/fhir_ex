defmodule Fhir.Generated.MeasureReportStratifier do
  use TypedStruct

  typedstruct do
    field :_linkId, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :stratum, [Fhir.Generated.MeasureReportStratum], default: []
  end
end
