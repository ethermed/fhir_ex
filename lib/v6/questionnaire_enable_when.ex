defmodule Fhir.v6().QuestionnaireEnableWhen do
  use TypedStruct

  typedstruct do
    field(:_answerBoolean, Fhir.v6().Element)
    field(:_answerDate, Fhir.v6().Element)
    field(:_answerDateTime, Fhir.v6().Element)
    field(:_answerDecimal, Fhir.v6().Element)
    field(:_answerInteger, Fhir.v6().Element)
    field(:_answerString, Fhir.v6().Element)
    field(:_answerTime, Fhir.v6().Element)
    field(:_operator, Fhir.v6().Element)
    field(:_question, Fhir.v6().Element)
    field(:answerBoolean, :boolean)
    field(:answerCoding, Fhir.v6().Coding)
    field(:answerDate, :string)
    field(:answerDateTime, :string)
    field(:answerDecimal, :float)
    field(:answerInteger, :float)
    field(:answerQuantity, Fhir.v6().Quantity)
    field(:answerReference, Fhir.v6().Reference)
    field(:answerString, :string)
    field(:answerTime, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operator, :string)
    field(:question, :string)
  end
end
