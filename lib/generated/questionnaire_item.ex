defmodule Fhir.Generated.QuestionnaireItem do
  use TypedStruct

  typedstruct do
    field :_answerConstraint, Fhir.Generated.Element
        field :_definition, Fhir.Generated.Element
        field :_disabledDisplay, Fhir.Generated.Element
        field :_enableBehavior, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :_maxLength, Fhir.Generated.Element
        field :_prefix, Fhir.Generated.Element
        field :_readOnly, Fhir.Generated.Element
        field :_repeats, Fhir.Generated.Element
        field :_required, Fhir.Generated.Element
        field :_text, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :answerConstraint, :string
        field :answerOption, [Fhir.Generated.QuestionnaireAnswerOption], default: []
        field :answerValueSet, :string
        field :code, [Fhir.Generated.Coding], default: []
        field :definition, :string
        field :disabledDisplay, :string
        field :enableBehavior, :string
        field :enableWhen, [Fhir.Generated.QuestionnaireEnableWhen], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :initial, [Fhir.Generated.QuestionnaireInitial], default: []
        field :item, [Fhir.Generated.QuestionnaireItem], default: []
        field :linkId, :string
        field :maxLength, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :prefix, :string
        field :readOnly, :boolean
        field :repeats, :boolean
        field :required, :boolean
        field :text, :string
        field :type, :string
  end
end
