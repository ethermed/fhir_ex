defmodule Fhir.Generated.ResearchStudyOutcomeMeasure do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :reference, Fhir.Generated.Reference
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end