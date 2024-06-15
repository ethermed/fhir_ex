defmodule Fhir.QuestionnaireItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_answerConstraint, Fhir.Element
        field :_definition, Fhir.Element
        field :_disabledDisplay, Fhir.Element
        field :_enableBehavior, Fhir.Element
        field :_linkId, Fhir.Element
        field :_maxLength, Fhir.Element
        field :_prefix, Fhir.Element
        field :_readOnly, Fhir.Element
        field :_repeats, Fhir.Element
        field :_required, Fhir.Element
        field :_text, Fhir.Element
        field :_type, Fhir.Element
        field :answerConstraint, :string
        field :answerOption, [Fhir.QuestionnaireAnswerOption], default: []
        field :answerValueSet, :string
        field :code, [Fhir.Coding], default: []
        field :definition, :string
        field :disabledDisplay, :string
        field :enableBehavior, :string
        field :enableWhen, [Fhir.QuestionnaireEnableWhen], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :initial, [Fhir.QuestionnaireInitial], default: []
        field :item, [Fhir.QuestionnaireItem], default: []
        field :linkId, :string
        field :maxLength, :float
        field :modifierExtension, [Fhir.Extension], default: []
        field :prefix, :string
        field :readOnly, :boolean
        field :repeats, :boolean
        field :required, :boolean
        field :text, :string
        field :type, :string
  end
end
