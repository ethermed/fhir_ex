defmodule Fhir.ResearchStudyLabel do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_value, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, Fhir.CodeableConcept
        field :value, :string
  end
end
