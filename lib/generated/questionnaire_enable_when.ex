defmodule Fhir.Generated.QuestionnaireEnableWhen do
  use TypedStruct

  typedstruct do
    field :_answerBoolean, Fhir.Generated.Element
        field :_answerDate, Fhir.Generated.Element
        field :_answerDateTime, Fhir.Generated.Element
        field :_answerDecimal, Fhir.Generated.Element
        field :_answerInteger, Fhir.Generated.Element
        field :_answerString, Fhir.Generated.Element
        field :_answerTime, Fhir.Generated.Element
        field :_operator, Fhir.Generated.Element
        field :_question, Fhir.Generated.Element
        field :answerBoolean, :boolean
        field :answerCoding, Fhir.Generated.Coding
        field :answerDate, :string
        field :answerDateTime, :string
        field :answerDecimal, :float
        field :answerInteger, :float
        field :answerQuantity, Fhir.Generated.Quantity
        field :answerReference, Fhir.Generated.Reference
        field :answerString, :string
        field :answerTime, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operator, :string
        field :question, :string
  end
end
