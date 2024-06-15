defmodule Fhir.QuestionnaireEnableWhen do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_answerBoolean, Fhir.Element
        field :_answerDate, Fhir.Element
        field :_answerDateTime, Fhir.Element
        field :_answerDecimal, Fhir.Element
        field :_answerInteger, Fhir.Element
        field :_answerString, Fhir.Element
        field :_answerTime, Fhir.Element
        field :_operator, Fhir.Element
        field :_question, Fhir.Element
        field :answerBoolean, :boolean
        field :answerCoding, Fhir.Coding
        field :answerDate, :string
        field :answerDateTime, :string
        field :answerDecimal, :float
        field :answerInteger, :float
        field :answerQuantity, Fhir.Quantity
        field :answerReference, Fhir.Reference
        field :answerString, :string
        field :answerTime, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :operator, :string
        field :question, :string
  end
end
