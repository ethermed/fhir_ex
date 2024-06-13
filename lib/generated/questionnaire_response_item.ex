defmodule Fhir.Generated.QuestionnaireResponseItem do
  use TypedStruct

  typedstruct do
    field :_definition, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :answer, [Fhir.Generated.QuestionnaireResponseAnswer], default: []
        field :definition, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :item, [Fhir.Generated.QuestionnaireResponseItem], default: []
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :text, :string
  end
end
