defmodule Fhir.QuestionnaireAnswerOption do
  use TypedStruct

  typedstruct do
    field(:_initialSelected, Fhir.Element)
    field(:_valueDate, Fhir.Element)
    field(:_valueInteger, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:_valueTime, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:initialSelected, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:valueCoding, Fhir.Coding)
    field(:valueDate, :string)
    field(:valueInteger, :float)
    field(:valueReference, Fhir.Reference)
    field(:valueString, :string)
    field(:valueTime, :string)
  end
end
