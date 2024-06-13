defmodule Fhir.Generated.ResearchStudyComparisonGroup do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :intendedExposure, [Fhir.Generated.Reference], default: []
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :observedGroup, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
  end
end
